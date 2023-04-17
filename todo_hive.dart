import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('Todo');
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.brown),
      home: Todo(),
    ),
  );
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<Map<String, dynamic>> tasks = [];

  final title = TextEditingController();
  final description = TextEditingController();

  //Hive class operation
  final myTaskBox = Hive.box('Todo');

  @override
  //To initially show all data pre entered
  initState() {
    super.initState();
    fetchTask();
  }

  //Hive create operation
  Future<void> createTask(Map<String, dynamic> newTask) async {
    await myTaskBox.add(newTask);
    fetchTask();
  }

  //Hive Update Operation
  Future<void> updateTask(int itemKey, Map<String, dynamic> updateTask) async {
    await myTaskBox.put(itemKey, updateTask);
    fetchTask();
  }

  //Hive Delete Operation
  Future<void> deleteTask(int? del) async {
    await myTaskBox.delete(del);
    fetchTask();
  }

  //Read all data from hive
  void fetchTask() {
    final taskFromHive = myTaskBox.keys.map((key) {
      final value = myTaskBox.get(key);
      return {
        "id": key,
        'title': value['title'],
        'description': value['description']
      };
    }).toList();
    //reversed to sort items in latest to oldest order
    setState(
      () {
        tasks = taskFromHive.reversed.toList();
      },
    );
  }

  //Read Single Data from hive
  Map<String, dynamic> readData(int key) {
    final sData = myTaskBox.get(key);
    return sData;
  }

  //Creating bottom sheet for entering data
  void showTask(BuildContext context, int? itemKey) {
    if (itemKey != null) {
      final existingTask =
          tasks.firstWhere((element) => element['id'] == itemKey);
      title.text = existingTask['title'];
      description.text = existingTask['description'];
    }
    showModalBottomSheet(
      backgroundColor: Colors.green,
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          top: 100,
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom + 10,
        ),
        child: Column(
          children: [
            TextFormField(
              controller: title,
              decoration: const InputDecoration(
                hintText: "NewTask",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: description,
                decoration: const InputDecoration(
                  hintText: "Description of New Task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () async {
                  if (itemKey == null) {
                    createTask(
                      {
                        'title': title.text.trim(),
                        'description': description.text.trim()
                      },
                    );
                  }
                  if (itemKey != null) {
                    updateTask(
                      itemKey,
                      {
                        'title': title.text,
                        'description': description.text,
                      },
                    );
                  }
                  title.text = "";
                  description.text = "";
                  Navigator.of(context).pop();
                },
                child: Text(itemKey == null ? "Create Task" : "Update Task"),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.brown,
          elevation: 5,
          centerTitle: true,
          title: const Text("ToDo"),
        ),
      ),
      body: tasks.isEmpty
          ? Stack(
              children: const [
                Positioned(
                  top: 190,
                  left: 140,
                  child: Image(
                    height: 120,
                    width: 120,
                    image: AssetImage(
                      "assets/Icons/completed.png",
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 115,
                  child: Text(
                    "All Tasks Completed",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                )
              ],
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final myTask = tasks[index];
                return ListTile(
                  title: Text(
                    myTask["title"],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    myTask["description"],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {
                          showTask(
                            context,
                            myTask['id'],
                          );
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          deleteTask(
                            myTask['id'],
                          );
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => showTask(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }
}
