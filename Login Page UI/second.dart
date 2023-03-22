import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text("WELCOME")),
      // ),
      body: Center(
          child: Text("WELCOME",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
    );
  }
}
// Fluttertoast.showToast(
// msg: "This is Center Short Toast",
// toastLength: Toast.LENGTH_SHORT,
// gravity: ToastGravity.CENTER,
// timeInSecForIosWeb: 1,
// backgroundColor: Colors.red,
// textColor: Colors.white,
// fontSize: 16.0
// );
