import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Stack_Profile(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Stack_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Profile"),
          actions: const [Icon(Icons.more_vert_rounded)],
        ),
        body: Stack(children: [
          Column(
            children: [
              Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1621879377242-bbffbcf901e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1334&q=80")))),
              Container(
                height: 491,
                color: Colors.white,
              )
            ],
          ),
          const Positioned(
            top: 188,
            left: 138,
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            top: 190,
            left: 140,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8UGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              radius: 60,
            ),
          ),
          const Positioned(
            top: 230,
            left: 15,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 25,
              child: Icon(Icons.message),
            ),
          ),
          const Positioned(
            top: 230,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(Icons.add),
            ),
          ),
          const Positioned(
              top: 320,
              left: 155,
              child: Text(
                "Hannah",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          const Positioned(
            top: 355,
            left: 150,
            child: Text(
              "Model/Celebrity",
              style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
            ),
          )
          //CircleAvatar()
        ]));
  }
}
