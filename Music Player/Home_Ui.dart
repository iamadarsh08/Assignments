import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_Screen_Ui(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Home_Screen_Ui extends StatelessWidget {
  @override
  var slider_1 = [
    "https://images.unsplash.com/photo-1552267094-b4c3771bd5e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8V2Vla25kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1619597361832-a568b1e0555f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxODkxODc3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWMlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1420161900862-9a86fa1f5c79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1421091242698-34f6ad7fc088?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXw0NTA1MDA0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var slider1_txt = [
    "Hot Hits",
    "Rock",
    "Pop",
    "Chill Mix",
    "Workout Music",
  ];
  var slider_2 = [
    "https://images.unsplash.com/photo-1565035010268-a3816f98589a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHxrRUJOWlJuSFhDY3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1484755560615-a4c64e778a6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1549490349-8643362247b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fG11c2ljJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1672700678338-97fa44c909f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBsYXlsaXN0JTIwY292ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1533408874882-397bf377a8c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJpdmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
  ];
  var slider2_txt = ["Party Songs", "Sleep", "Trance", "Lo-Fi", "Drive"];
  var grid_img = [
    "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B64/production/_128800391_gettyimages-1320433070.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg/330px-Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg",
    "https://images.unsplash.com/photo-1558304970-abd589baebe5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9maXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.indianexpress.com/2023/01/Pathaan-4.jpg",
    "https://images.unsplash.com/photo-1513279922550-250c2129b13a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cm9tYW50aWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var grid_txt = [
    "The Weeknd",
    "Eminem",
    "Lo-Fi",
    "Hot\nHits Hindi",
    "Romantic Mix",
    "Pop-Shots"
  ];
  var slider_4 = [];
  var slider4_txt = [];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: FlashyTabBar(
        iconSize: 28,
        height: 55,
        backgroundColor: Colors.black,
        selectedIndex: 0,
        //showElevation: true,
        onItemSelected: (int value) {},
        items: [
          FlashyTabBarItem(
            activeColor: Colors.pinkAccent,
            icon: const Icon(Icons.home_outlined),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search),
            activeColor: Colors.pinkAccent,
            title: const Text('Search'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.play_arrow),
            activeColor: Colors.pinkAccent,
            title: const Text('Player'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.playlist_play_sharp),
            activeColor: Colors.pinkAccent,
            title: const Text('Playlist'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.settings),
            activeColor: Colors.pinkAccent,
            title: const Text('Settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: SizedBox(
                child: Text(
                  "MuZyka",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                      fontSize: 28),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 15,
              ),
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Suggested For You",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                        fontSize: 19),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CarouselSlider.builder(
                  itemCount: slider_1.length,
                  itemBuilder: (BuildContext, i, index) {
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(slider_1[index]))),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 15,
                          child: Text(
                            slider1_txt[index],
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: 180,
                    aspectRatio: 16 / 9,
                    viewportFraction: .9,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.9,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Trending Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                      fontSize: 19),
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  itemBuilder: (BuildContext, index) => Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 200,
                                width: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(grid_img[index]))),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 15,
                            child: Text(
                              grid_txt[index],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Based on Your Listening",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                      fontSize: 19),
                ),
              ),
            ),
            SizedBox(
              height: 410,
              child: ListView.builder(
                  itemCount: slider_2.length,
                  itemBuilder: (BuildContext, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: ListTile(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1.2, color: Colors.pinkAccent),
                              borderRadius: BorderRadius.circular(20)),
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(slider_2[index]),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              slider2_txt[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          trailing: const Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
