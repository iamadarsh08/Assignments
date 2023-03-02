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
        home: Profile_UI_2(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Profile_UI_2 extends StatelessWidget {
  var Icen = [
    const FaIcon(
      FontAwesomeIcons.facebook,
      size: 35,
      color: Colors.indigo,
    ),
    const FaIcon(
      FontAwesomeIcons.twitter,
      size: 35,
      color: Colors.blue,
    ),
    FaIcon(
      FontAwesomeIcons.linkedinIn,
      size: 35,
      color: Colors.blue[800],
    ),
    const FaIcon(
      FontAwesomeIcons.github,
      size: 35,
      color: Colors.blue,
    ),
  ];
  var lead = [
    Icons.remove_red_eye,
    Icons.settings,
    Icons.history,
    Icons.support_agent,
    Icons.person_add_alt_1_outlined,
    Icons.logout
  ];
  var titlee = [
    "Privacy",
    "Settings",
    "History",
    "Support",
    "Invite Friend",
    "Logout"
  ];
  var trail = [
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.white,
      ),*/
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: SizedBox(
              height: 45,
              child: ListTile(
                leading: Icon(Icons.arrow_back_outlined),
                trailing: Icon(Icons.menu),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: SizedBox(
              height: 200,
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMR9aCLdQa1mjMmY89B_3HCeFOxTOrgnE8P5leHq86QVbZqYBBZwMKYZ7w_U2p-bSiNWc&usqp=CAU"),
                  maxRadius: 110,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 70,
              width: 400,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => Icen[index],
                  )),
            ),
          ),
          Column(
            children: const [
              Text(
                "Henry Cavill",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Actor/Model",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "British Actor",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          Column(
            children: List.generate(
                lead.length,
                (index) => Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(60))),
                        height: 50,
                        child: ListTile(
                          leading: Icon(lead[index]),
                          title: Text(titlee[index]),
                          trailing: Icon(trail[index]),
                        ),
                      ),
                    )),
          )
        ],
      )),
    );
  }
}
