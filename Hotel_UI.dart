import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotel_UI(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotel_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(height: 50,
        color: Colors.green,
        buttonBackgroundColor: Colors.lightGreen[200],
        backgroundColor: Colors.blue[100]!,
        items: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.search), Text("Search")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.favorite), Text("Favourite")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.settings), Text("Setting")],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8SG90ZWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))),
              child: Stack(
                children: const [
                  Positioned(
                    top: 230,
                    left: 10,
                    child: Text(
                      "LAKE VIEW RESORT",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 10,
                    child: Text(
                      "Kochi,Kerala",
                      style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                      top: 260,
                      right: 15,
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
                height: 80,
                child: Stack(children: const [
                  Positioned(
                    left: 10,
                    top: 8,
                    child: RatingBar.readOnly(
                      filledColor: Colors.green,
                      halfFilledColor: Colors.green,
                      emptyColor: Colors.green,
                      initialRating: 3.5,
                      isHalfAllowed: true,
                      halfFilledIcon: Icons.star_half,
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      size: 25,
                    ),
                  ),
                  Positioned(
                      top: 35,
                      left: 15,
                      child: Text(
                        "4.3(6,325)",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )),
                  Positioned(
                      top: 10,
                      right: 15,
                      child: Text(
                        "\u{20B9}${"9,250"}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.green),
                      )),
                  Positioned(
                      top: 35,
                      right: 15,
                      child: Text(
                        "/Night",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                ])),
            Container(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    minimumSize: const Size(200, 20)),
                child: const Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 500,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 170, top: 10),
                      child: Text(
                        "LAKE VIEW RESORT",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Lake View Resort is a luxurious retreat nestled amidst the serene surroundings of a picturesque lake in Kochi. The resort offers a unique and unforgettable experience for guests looking to unwind and relax in the lap of nature. The well-appointed rooms and suites are tastefully designed with modern amenities, ensuring utmost comfort and convenience. \n\nThe resort boasts of several recreational facilities, including an infinity pool, a well-equipped fitness center, a rejuvenating spa, and a range of outdoor activities such as boating, fishing, and hiking. The resort's signature restaurant serves delectable cuisine, ranging from local delicacies to international flavors, prepared by expert chefs. The warm and attentive staff ensure that every guest feels at home and enjoys a memorable stay at Lake View Resort.",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
