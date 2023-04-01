import 'package:december_project/Company_Ui/Second%20Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Company_Main(),
    debugShowCheckedModeBanner: false,
  ));
}

class Company_Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 400,
        height: 800,
        child: Stack(
          children: [
            Image(
                fit: BoxFit.fill,
                height: double.maxFinite,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1589810264340-0ce27bfbf751?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJhY2tncm91bmQlMjBncmFkaWVudHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enter The Invoice Number",
                      style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Eg: HXC1245 ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 540),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: SizedBox(
                          width: 140,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber[100]),
                              onPressed: () {},
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios_new_outlined,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "Back",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: SizedBox(
                          width: 140,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber[800]),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Company_Second()));
                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Next",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
