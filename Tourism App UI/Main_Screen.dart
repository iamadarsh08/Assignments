import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Detailed_Package_Screen.dart';
import 'Package_Screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login_Screen_Tourism(),
        routes: {"Package_Scrn": (context) => Detailed_Package_Screeen()},
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Login_Screen_Tourism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: SizedBox(
              height: 200,
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("assets/Images/Logo.jpg"),
                  foregroundColor: Colors.green,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Voyager's",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "Your Complete Travel Partner",
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Package_Screen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    minimumSize: const Size(150, 40)),
                child: const Text("Log in")),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("-or-"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    minimumSize: const Size(150, 40)),
                child: const ListTile(
                  leading: Text("Log in with facebook",
                      style: TextStyle(color: Colors.white)),
                  trailing:
                      FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 70, right: 70),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    minimumSize: const Size(250, 40)),
                onPressed: () {},
                child: const ListTile(
                  leading: Text(
                    "Log in with Twitter",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 70, right: 70),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    minimumSize: const Size(150, 40)),
                onPressed: () {},
                child: const ListTile(
                  leading: Text(
                    "Log in with Google",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.redAccent,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextButton(
              child: const Text(
                "Not a user? Register Here",
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
  void goTodetailed(BuildContext context, grid) {
    Navigator.pushNamed(context, "Package_Scrn", arguments: grid);
  }
}
