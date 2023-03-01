import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Expansion_Tile_UI(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Expansion_Tile_UI extends StatelessWidget {
  var anim = [
    "https://public.rive.app/community/runtime-files/4347-8939-double-helix-loader.riv",
    "https://public.rive.app/community/runtime-files/3045-6448-orbit-draw-order-demo.riv",
    "https://public.rive.app/community/runtime-files/3450-7227-halloween-ghost.riv",
    "https://public.rive.app/community/runtime-files/3348-7061-03-bat.riv",
    "https://public.rive.app/community/runtime-files/4123-8520-pomodoro-app.riv"
  ];
  var headin = [
    "Android Development",
    "Web Development",
    "Software Testing",
    "Business Analytics",
    "DATA SCIENCE"
  ];
  var dura = [
    "click for more",
    "click for more",
    "click for more",
    "click for more",
    "click for more"
  ];
  var head = ["Fees:", "Course Duration:"];
  var sub = ["29,000", "4 Months"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animation"),
        ),
        body: Stack(children: [
          const Image(
              height: 800,
              width: 400,
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1676487897207-16d290da8949?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfGJEbzQ4Y1Vod25ZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
          SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "COURSES OFFERED",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                ),
                Column(
                  children: [
                    Stack(children: [
                      Column(
                        children: List.generate(
                          5,
                          (index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60))),
                                width: 400,
                                height: 150,
                                child: Stack(
                                  children: [
                                    RiveAnimation.network(
                                      anim[index],
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: SingleChildScrollView(
                                        child: ExpansionTile(
                                          title: Text(headin[index],
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold)),
                                          subtitle: Text(dura[index],
                                              style: const TextStyle(
                                                  color: Colors.white)),
                                          children: List.generate(
                                              2,
                                              (index) => ListTile(
                                                    title: Text(
                                                      head[index],
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    subtitle: Text(
                                                      sub[index],
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
