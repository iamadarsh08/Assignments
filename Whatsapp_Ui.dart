import 'package:december_project/WhatsApp_UI/Call_Screen.dart';
import 'package:december_project/WhatsApp_UI/Chat_Screen.dart';
import 'package:december_project/WhatsApp_UI/Status_Screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Tab_Bar(),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(primary: const Color(0xff128C7E))),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Tab_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.camera_alt_rounded),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 5,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("Linked Devices")),
                const PopupMenuItem(child: Text("Starred messages")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings")),
              ];
            }), /*
            SizedBox(
              width: 20,
            )*/
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              /*unselectedLabelColor: Colors.white,
              indicatorColor: Colors.green,*/
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: const Tab(
                    icon: Icon(Icons.groups),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Tab(text: "Chats")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(
                    text: "Status",
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Tab(
                    text: "Calls",
                  ),
                )
              ]),
        ),
        body: TabBarView(children: [
          const Center(
            child: Text("Community"),
          ),
          Chat_Screen(),
          Status_Screen(),
          Call_Screen()
        ]),
        /*floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),*/
      ),
    );
  }
}
