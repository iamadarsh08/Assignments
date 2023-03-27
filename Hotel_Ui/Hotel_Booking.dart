import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotel_Booking(),
        theme: ThemeData(primarySwatch: Colors.cyan),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotel_Booking extends StatelessWidget {
  var images = [
    "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8SG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1521783988139-89397d761dce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1584132915807-fd1f5fbc078f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var names = [
    "Crowne Plaza",
    "Novotel",
    "Grand Hayatt",
    "Le maritime",
    "Bolgatty Palace",
    "City Scrapper",
    "Nature Villa",
    "Bamboo Groove"
  ];
  var des = [
    "Five Star Hotel",
    "Three Star Hotel",
    "Four Star Hotel",
    "Five Star Hotel",
    "Five Star Hotel",
    "Four Star Hotel",
    "Three Star Hotel",
    "Three Star Hotel"
  ];
  var rate = [
    "2,000/Night",
    "1,500/Night",
    "1,800/Night",
    "3,200/Night",
    "3,500/Night",
    "2,900/Night",
    "2,100/Night",
    "1,800/Night"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 85,
        child: BottomNavigationBar(
          currentIndex: 1,
          iconSize: 20,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box), label: "Bookings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text("Hello, User"),
                subtitle: Text(
                  "Find Hotels Here",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1488646953014-85cb44e25828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: OutlineSearchBar(
                  hintText: "Search for Hotel...",
                  clearButtonColor: Colors.white,
                  clearButtonIconColor: Colors.black,
                  searchButtonIconColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  borderColor: Colors.black,
                  //backgroundColor: Colors.cyan,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextButton(onPressed: () {}, child: Text("View All"))
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 250,
                  child: Row(
                    children: [
                      Rows(
                          img: NetworkImage(
                              "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8SG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                          nme: "Crowne Plaza",
                          descrip: "Five Star Hotel",
                          ratin: "4.5",
                          rate: "\u{20B9}${"2,000/Night"}"),
                      Rows(
                          img: NetworkImage(
                              "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          nme: "Novotel",
                          descrip: "Three Star Hotel ",
                          ratin: "4.1",
                          rate: "\u{20B9}${"1,500/Night"}"),
                      Rows(
                          img: NetworkImage(
                              "https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          nme: "Grand Hayatt",
                          descrip: "Four Star Hotel",
                          ratin: "4.2",
                          rate: "\u{20B9}${"1,800/Night"}"),
                      Rows(
                          img: NetworkImage(
                              "https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fEhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          nme: "Le Maritime",
                          descrip: "Five Star Hotel",
                          ratin: "4.6",
                          rate: "\u{20B9}${"3,200/Night"}"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotel Packages",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextButton(onPressed: () {}, child: Text("View All"))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (BuildContext, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.blueGrey),
                              height: 150,
                              child: Stack(
                                children: [
                                  Image(
                                    width: 160,
                                    height: 150,
                                    fit: BoxFit.fill,
                                    image: NetworkImage(images[index]),
                                  ),
                                  Positioned(
                                      top: 10,
                                      left: 180,
                                      child: Text(
                                        names[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                  Positioned(
                                      top: 40,
                                      left: 180,
                                      child: Text(
                                        des[index],
                                        style: TextStyle(fontSize: 16),
                                      )),
                                  Positioned(
                                    top: 65,
                                    left: 180,
                                    child: Text(
                                      "\u{20B9}${rate[index]}",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Positioned(
                                      top: 100,
                                      left: 180,
                                      child:
                                          Icon(Icons.wifi, color: Colors.cyan)),
                                  Positioned(
                                      top: 100,
                                      left: 210,
                                      child: Icon(Icons.local_parking,
                                          color: Colors.cyan)),
                                  Positioned(
                                      top: 100,
                                      left: 240,
                                      child: Icon(Icons.restaurant,
                                          color: Colors.cyan)),
                                  Positioned(
                                    right: 0,
                                    bottom: 10,
                                    child: SizedBox(
                                      width: 100,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Book")),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Rows extends StatelessWidget {
  const Rows(
      {super.key,
      required this.img,
      required this.nme,
      required this.descrip,
      required this.ratin,
      required this.rate});

  final ImageProvider img;
  final String nme;
  final String descrip;
  final String ratin;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(color: Colors.blueGrey),
          height: 300,
          width: 180,
          child: Column(
            children: [
              Image(height: 130, width: 180, fit: BoxFit.fill, image: img),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      nme,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 8),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text(descrip)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 5),
                child: Row(
                  children: [
                    Text(rate),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(ratin),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.cyan,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
