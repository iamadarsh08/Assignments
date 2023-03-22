import 'package:december_project/Login%20Page%20UI/second.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var formkey = GlobalKey<FormState>();

  var showpass = true;
  var confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(title: Text("LOGIN SCREEN")
      ),*/
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "REGISTRATION PAGE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, right: 140, top: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Please enter your email Id',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@gmail.com")) {
                    return "Enter a Vaild email";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, right: 140, top: 10),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please enter your password',
                    prefixIcon: const Icon(Icons.password_rounded),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                validator: (password) {
                  confirmpass = password;
                  if (password!.isEmpty || password.length < 5) {
                    return "Password is Invalid";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, right: 140, top: 10),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Please re-enter your password',
                    prefixIcon: const Icon(Icons.password_rounded),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                validator: (password) {
                  if (password!.isEmpty ||
                      password.length < 5 ||
                      confirmpass != password) {
                    return "Password Mismatch";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    } else {
                      return null;
                    }
                  },
                  child: const Text("SIGN UP")),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7),
              child: Text("Not a user? Register Here"),
            )
          ],
        ),
      ),
    );
  }
}

///Immutable : No change happens
///In Stateful we use createState to change the screen to mutable state.
///Mutable   : Changes Happen
