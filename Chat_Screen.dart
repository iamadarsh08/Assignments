import 'package:flutter/material.dart';

class Chat_Screen extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1638016329956-1127c6e4c96f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673443314719-aa8948a09a3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM4fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674173784607-820a6ea8d7db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1675321743925-b0e817a3c965?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674552254918-9465a3812037?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDgyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674174282032-cce65d2dabc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDg2fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674502301589-55a303664a7b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDkyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674502354970-95d8c8c23206?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwOXx0b3dKWkZza3BHZ3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674502403351-9e665a9b7286?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExOHx0b3dKWkZza3BHZ3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674082820891-f57cf4a3e233?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2Nnx0b3dKWkZza3BHZ3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var nme = [
    "Mathew",
    "Anna",
    "Steve",
    "Austin",
    "Edward",
    "Adam",
    "Morgan",
    "Thomas",
    "Letty",
    "Henry",
  ];
  var icn = [
    Icons.check,
    Icons.done_all,
    Icons.done_all,
    Icons.image,
    Icons.image,
    Icons.done_all,
    Icons.done_all,
    Icons.check,
    Icons.done_all,
    Icons.check,
  ];

  var txt = [
    "HAI",
    "Hello",
    "Good Morning",
    "Woah!",
    "Thanks",
    "See you",
    "Thanks Bro",
    "K",
    "https://github.com/iamadars",
    "Yup"
  ];
  var time = [
    "02:05PM",
    "11:30AM",
    "07:15AM",
    "Yesterday",
    "Yesterday",
    "12/02/2023",
    "10/02/23",
    "02/02/23",
    "25/01/23",
    "10/01/23",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: img.length,
          itemBuilder: (BuildContext, index) {
            return ListTile(
              leading: CircleAvatar(radius: 28,
                backgroundImage: NetworkImage(img[index]),
              ),
              title: Text(
                nme[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [Icon(icn[index]), Text(txt[index])],
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text(
                  time[index],
                  style: TextStyle(fontSize: 12),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}
