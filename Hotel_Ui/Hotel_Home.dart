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
        home: Hotel_Home(),
        theme: ThemeData(primarySwatch: Colors.cyan),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotel_Home extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1444201983204-c43cbd584d93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587874522487-fe10e954d035?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxob3RlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596394516093-501ba68a0ba6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var location = [
    "Thiruvananthapuram",
    "Wayanad",
    "Vagamon",
    "Ernakulam",
    "Calicut",
    "Munnar",
  ];
  var reviews = [
    "78 Hotels",
    "112 Hotels",
    "25 Hotels",
    "105 Hotels",
    "99 Hotels",
    "125 Hotels",
  ];
  var rate = [
    "From \u{20B9}1500",
    "From \u{20B9}3500",
    "From \u{20B9}2299",
    "From \u{20B9}1199",
    "From \u{20B9}999",
    "From \u{20B9}4499",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 85,
          child: BottomNavigationBar(iconSize: 20, items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box), label: "Bookings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            leading: const Icon(Icons.menu_outlined),
            title: const Text(
              "Xivago",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.settings),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(Icons.hotel_outlined),
                              Text("Hotel")
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(Icons.restaurant),
                              Text("Restaurant")
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        width: 90,
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(Icons.local_cafe),
                              Text("Cafe")
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: OutlineSearchBar(
                  hintText: "Search for Location...",
                  clearButtonColor: Colors.white,
                  clearButtonIconColor: Colors.black,
                  searchButtonIconColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  borderColor: Colors.black,
                  backgroundColor: Colors.cyan,
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 900,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemCount: img.length,
                      itemBuilder: (BuildContext, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.cyan),
                                width: 380,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      child: Stack(
                                        children: [
                                          Image(
                                            fit: BoxFit.fill,
                                            height: 290,
                                            image: NetworkImage(img[index]),
                                          ),
                                          Positioned(
                                            right: 0,
                                            top: 0,
                                            child: ElevatedButton.icon(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.star_outline),
                                                label: const Text("Favourite")),
                                          ),
                                          Positioned(
                                            bottom: 15,
                                            right: 15,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.grey),
                                                height: 32,
                                                width: 100,
                                                child: Center(
                                                  child: Text(
                                                    rate[index],
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          location[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          reviews[index],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[800]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              )
            ],
          ),
        ));
  }
}
