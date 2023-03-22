import 'dart:async';
import 'package:december_project/Login%20Page%20UI/Reg_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Login_Page.dart';



void main() {
  runApp( MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
  ));
  /*runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );*/
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login_Page()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueAccent,
      ///Body as Column/ Multi child widget.
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.cyan,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Images/D.jpg"), fit: BoxFit.fill)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image:

                    ///Network Image
                    /*NetworkImage("url")*/

                    ///Asset Image
                    AssetImage("assets/Icons/home.png"),
                width: 100,
                height: 100,
              ),
              // Icon(
              //   Icons.add,
              //   color: Colors.red,
              //   size: 80,
              // ),
              Text(
                "WELCOME",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
      // ///Body as Icon
      // body: Center(
      //   child: Icon(
      //     Icons.accessible,
      //     size: 70,
      //     color: Colors.brown,
      //   ),
      // ),

      ///Body as text
      //     body: Center(
      //   child: Text(
      //     "Application",
      //     style: TextStyle(fontSize: 30, color: Colors.blue),
      //   ),
      // ),
    );
  }
}
