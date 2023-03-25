import 'package:december_project/Tourism_UI2/Datas.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Detailed_Screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {"Pckg_Scrn": (context) => Detailed_Screen()},
        home: Tourism_Main(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Tourism_Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                    height: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Places",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                      height: 30,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Popular",
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                )),
            SizedBox(
              height: 900,
              child: ListView(
                children: locations.map((listt) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 130,
                            width: 380,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(listt["Image"]))),
                            child: Stack(children: [
                              GestureDetector(
                                onTap: () => go_to(context, listt["id"]),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 10,
                                child: Text(
                                  listt["Name"],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  void go_to(BuildContext context, listt) {
    Navigator.pushNamed(context, "Pckg_Scrn", arguments: listt);
  }
}
