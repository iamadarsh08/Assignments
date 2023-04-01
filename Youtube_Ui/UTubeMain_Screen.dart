import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class U_Tube_Main extends StatelessWidget {
  var template = [
    "https://images.unsplash.com/photo-1611162616475-46b635cb6868?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmlkZW9zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1575089976121-8ed7b2a54265?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw4NTE4MzA0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw0MzAwNzd8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1598133387813-be630df603fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXwxMTU4NTQ5fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1503703294279-c83bdf7b4bf4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Mnw1NDIyMTB8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"
  ];
  var circle = [
    "https://images.unsplash.com/photo-1642726197626-f03ef77f13cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fFlvdXR1YmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1614741118887-7a4ee193a5fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fENvZGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1550745165-9bc0b252726f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8VGVjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1594502167666-3e87b8c16343?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTh8MTE1ODU0OXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1477254055362-4b2615606e1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTZ8NTQyMjEwfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var txt = [
    "Youtube Secrets",
    "Top 10 Coding Tips",
    "Upcoming work centric Laptops",
    "The Mustangs",
    "Herby The Beetle"
  ];
  var timestamp = [
    "10:25",
    "15:04",
    "8:10",
    "18:32",
    "12:30",
  ];
  var cname = [
    "Youtube •",
    "dudeCoder •",
    "Techs and Techies •",
    "The Exotics •",
    "Cars & Cars •",
  ];
  var views = [
    "8.2M views •",
    "66K views •",
    "            55K views •",
    "1.2M views •",
    "586K views •",
  ];
  var date = [
    "3 years ago",
    "2 weeks ago",
    "           1 year ago",
    "  6 months ago",
    "  5 years ago",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 20,
              right: 8,
              bottom: 8,
            ),
            child: FaIcon(
              FontAwesomeIcons.youtube,
              color: Colors.red,
              size: 40,
            ),
          ),
          title: const Text("Youtube"),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_none_outlined,
                size: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline_outlined), label: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.subscriptions_outlined),
                  label: "Subscriptions"),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                label: "Library",
              ),
            ]),
        body: SizedBox(
          height: 800,
          child: ListView.builder(
              itemCount: template.length,
              itemBuilder: (BuildContext, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    height: 290,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Stack(children: [
                      Stack(children: [
                        Image(
                          fit: BoxFit.cover,
                          height: 200,
                          width: 400,
                          image: NetworkImage(template[index]),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Colors.black,
                              height: 20,
                              width: 40,
                              child: Center(
                                child: Text(
                                  timestamp[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                      Positioned(
                        bottom: 30,
                        left: 10,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundImage: NetworkImage(circle[index]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 25),
                              child: Text(
                                txt[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        bottom: 50,
                        right: 0,
                        child: Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 35,
                        left: 65,
                        child: Text(
                          cname[index],
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      index == 0
                          ? Positioned(
                              bottom: 35,
                              left: 130,
                              child: Text(
                                views[index],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            )
                          : Positioned(
                              bottom: 35,
                              left: 150,
                              child: Text(
                                views[index],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                      index == 0
                          ? Positioned(
                              bottom: 35,
                              left: 210,
                              child: Text(
                                date[index],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            )
                          : Positioned(
                              bottom: 35,
                              left: 225,
                              child: Text(
                                date[index],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                    ]),
                  ),
                );
              }),
        ));
  }
}
