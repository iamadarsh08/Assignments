import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Farmers_Fresh(),
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Farmers_Fresh extends StatefulWidget {
  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {
  var img = [
    "https://images.unsplash.com/photo-1620706857370-e1b9770e8bb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZnJ1aXRzJTIwYW5kJTIwdmVnZXRhYmxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];

  var img1 = [
    "https://images.unsplash.com/photo-1609842947419-ba4f04d5d60f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1619566636858-adf3ef46400b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1527325678964-54921661f888?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGV4b3RpYyUyMGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1487376480913-24046456a727?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzZ8fGN1dCUyMGZydWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1571750007475-09cc42b58613?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG51dHJpdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1627735483792-233bf632619b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZmxvdXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];

  var txt = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Flours"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.lightGreen,
        buttonBackgroundColor: Colors.lightGreen,
        backgroundColor: Colors.blue[100]!,
        index: index,
        onTap: (taped_index) {
          setState(() {
            index = taped_index;
          });
        },
        items: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.home_outlined), Text("Home")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.shopping_cart_outlined), Text("Cart")],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: const [Icon(Icons.account_circle_outlined), Text("Profile")],
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: const Text(
            "FARMERS FRESH ZONE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.location_on_outlined),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text("Kollam"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_drop_down_outlined),
            )
          ],
          bottom: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 45,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search here for Vegetables,Fruits...",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 20,
              //color: Colors.black
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text("VEGETABLES")),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text("FRUITS")),
                  ),
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text("EXOTIC")),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text("FRESH CUTS")),
                  ),
                ],
              ),
            ),
          ),
        ])),
        SliverList(
            delegate: SliverChildListDelegate([
          CarouselSlider.builder(
              itemCount: 2,
              itemBuilder: (BuildContext, index, realindex) {
                return Container(
                  height: 600,
                  width: 500,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(img[index]),
                  ),
                );
              },
              options: CarouselOptions(
                // height: 300,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 1,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.vertical,
              ))
        ])),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.timer_sharp,
                              size: 40, color: Colors.blue[200]),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 8),
                          child: Text("TIMELY DELIVERY",
                              style: TextStyle(fontSize: 12)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.spatial_tracking_outlined,
                              size: 40, color: Colors.blue[200]),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 8),
                          child: Text("TRACEABILTY",
                              style: TextStyle(fontSize: 12)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.local_convenience_store_rounded,
                              size: 40, color: Colors.blue[200]),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0, bottom: 8),
                          child: Text("LOCAL SOURCING",
                              style: TextStyle(fontSize: 12)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ])),
        SliverList(
            delegate: SliverChildListDelegate([
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "SHOP BY CATEGORY",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ])),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 400,
                child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(
                        6,
                        (index) => Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Column(
                                children: [
                                  Container(
                                      height: 80,
                                      width: 120,
                                      child: Image(
                                        image: NetworkImage(img1[index]),
                                        fit: BoxFit.fill,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(txt[index]),
                                  )
                                ],
                              ),
                            ))),
              ),
            ),
          ),
        ]))
      ]),
    );
  }
}
