import 'package:flutter/material.dart';

class Status_Screen extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1675215452934-ab9954f0aa78?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8UzRNS0xBc0JCNzR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673706696418-953e1621980f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673603217441-7d92ff358037?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDd8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1675545858641-7b90372ced2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8eGpQUjRobGtCR0F8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"
  ];
  var img1 = [
    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1676532221518-791a8474cd4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDh8eEh4WVRNSExnT2N8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674985594089-eab270e843c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8SnBnNktpZGwtSGt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1670895244774-2ae104055bf6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JvdXB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  ];
  var name = ["Anna", "Steve", "Adam", "Morgan", "Thomas"];
  var name1 = ["Mark", "Tony", "Tommy", "Marcos", "Juliet"];
  var time = [
    "Just now",
    "5 minutes ago",
    "48 minutes ago",
    "55 minutes ago",
    "Today,12:00pm"
  ];
  var time1 = [
    "Today,11:30am",
    "Today,09:00am",
    "Yesterday,11:30pm",
    "Yesterday,11:10pm",
    "Yesterday,09:30pm"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10, left: 5),
                child: Stack(children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/Images/C.jpg"),
                  ),
                  Positioned(
                    top: 25,
                    left: 35,
                    child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.teal,
                        child: Icon(
                          Icons.add,
                          size: 20,
                        )),
                  ),
                ]),
              ),
              title: const Text(
                "My status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Tap here to add status update"),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15, top: 10),
              child: SizedBox(width: 320, child: Text("Recent updates")),
            ),
            SizedBox(
              height: 475,
              child: ListView.custom(
                childrenDelegate:
                    SliverChildListDelegate(List.generate(5, (index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.green,
                            child: CircleAvatar(
                                radius: 26,
                                backgroundImage: NetworkImage(img[index])),
                          ),
                          title: Text(
                            name[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(time[index]),
                        ),
                      ),
                    ],
                  );
                })),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: SizedBox(
                  width: 330, height: 25, child: Text("Viewed updates")),
            ),
            SizedBox(
              height: 500,
              child: ListView.custom(
                  childrenDelegate:
                      SliverChildListDelegate(List.generate(5, (index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              radius: 26,
                              backgroundImage: NetworkImage(
                                img1[index],
                              ),
                            )),
                        title: Text(
                          name1[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(time1[index]),
                      ),
                    ),
                  ],
                );
              }))),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt_rounded),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
