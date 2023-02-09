import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Grid_UI_Screen(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Grid_UI_Screen extends StatelessWidget {
  var celer = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.teal,
    Colors.yellow,
    Colors.deepOrange,
    Colors.pink,
    Colors.lightGreen
  ];
  var icen = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.ticket,
    FontAwesomeIcons.signal,
    FontAwesomeIcons.bookBookmark,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.solidEnvelope,
    FontAwesomeIcons.map,
    FontAwesomeIcons.microchip,
    FontAwesomeIcons.microphoneSlash,
    FontAwesomeIcons.fileCirclePlus,
  ];
  var neme = [
    "HOME",
    "ALERT",
    "CAMERA",
    "TICKET",
    "SIGNAL\nSTREAM",
    "BOOKMARK",
    "PHONE",
    "MAIL",
    "MAP",
    "PROCESSOR",
    "MUTE",
    "ADD FILE"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRID VIEW"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 90),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black, spreadRadius: 1, blurRadius: 15,offset: Offset(1, 4))
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: celer[index]
                ),
                child: Center(
                  child: ListTile(
                    leading: FaIcon(icen[index]),
                    title: Text(neme[index]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}





// shadowColor: Colors.grey[800],
//shape: const RoundedRectangleBorder(
//  borderRadius: BorderRadius.all(Radius.circular(10))),
/*color: celer[index],
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(icen[index], color: Colors.grey[600], size: 30),
                      Text(neme[index])
                    ]),*/
