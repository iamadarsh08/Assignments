import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'UTubeMain_Screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UTubeSplash(),
  ));
}

class UTubeSplash extends StatefulWidget {
  @override
  State<UTubeSplash> createState() => _UTubeSplashState();
}

class _UTubeSplashState extends State<UTubeSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => U_Tube_Main()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        child: Lottie.asset("assets/Animation/38763-youtube-logo-effect.json"),
      ),
    );
  }
}
