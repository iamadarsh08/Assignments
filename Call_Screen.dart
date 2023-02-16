import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Call_Screen extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1638016329956-1127c6e4c96f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673443314719-aa8948a09a3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM4fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674082820891-f57cf4a3e233?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2Nnx0b3dKWkZza3BHZ3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var name = ["Mathew", "Anna", "Henry", "John", "Jennah", "Mat Armstrong"];
  var icon = [
    Icons.call_made,
    Icons.call_received,
    Icons.call_received,
    Icons.call_made,
    Icons.call_received,
    Icons.call_made,
  ];
  var dandt = [
    "Just now",
    "Yesterday,5:18pm",
    "8 February,12:57pm",
    "5 February,3:25pm",
    "31 January,9:00pm",
    "30 January,9:00am"
  ];
  var tail = [
    Icons.phone,
    Icons.videocam,
    Icons.phone,
    Icons.phone,
    Icons.phone,
    Icons.phone,
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
              title: Text(name[index]),
              subtitle: Row(
                children: [
                  Icon(
                    icon[index],
                    color: Colors.green,
                  ),
                  Text(dandt[index]),
                ],
              ),
              trailing: Icon(
                tail[index],
                color: Colors.green,
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
    );
  }
}
