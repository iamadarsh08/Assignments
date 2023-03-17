import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:december_project/Tourism%20App%20UI/Datas.dart';
import 'package:flutter/material.dart';
import 'Main_Screen.dart';

class Package_Screen extends StatelessWidget {
  @override
  var txt = [
    "My Account",
    "View/Manage Trips",
    "Wishlist",
    "Refer & Earn",
    "Notifications",
    "Settings",
    "Support"
  ];
  var icns = [
    Icons.person,
    Icons.card_travel_outlined,
    Icons.favorite_border,
    Icons.attach_email_outlined,
    Icons.notifications_none_outlined,
    Icons.settings,
    Icons.support_agent_outlined
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Voyager's",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
        ),
        actions: [
          SizedBox(
              width: 60,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.person)))
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: const ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Icon(Icons.person),
              ),
              title: Text(
                "Hi,Adam",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                "+918652457801",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
                itemCount: txt.length,
                itemBuilder: (BuildContextcontext, index) {
                  return ListTile(
                    leading: Icon(
                      icns[index],
                      color: Colors.grey,
                    ),
                    title: Text(
                      txt[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Login_Screen_Tourism()));
              },
              child: const Text("Logout"))
        ],
      )),
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            height: 900,
            width: 450,
            child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1639136738243-246a64513b58?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDc1fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
          ),
          Column(
            children: [
              AnimSearchBar(
                helpText: "Search Here",
                width: 400,
                textController: TextEditingController(),
                onSuffixTap: null,
                onSubmitted: (String) {},
              ),
              SizedBox(
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Places",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(color: Colors.grey),
                          )),
                      /*Card(),
                      Column()*/
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 700,
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 400,
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                      ),
                      children: places.map((grids) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(grids["Image"]),
                                      fit: BoxFit.cover)),
                              child: Stack(
                                children: [
                                  GestureDetector(
                                      onTap: () =>
                                          goTodetailed(context, grids["Id"])),
                                  Positioned(
                                    bottom: 90,
                                    right: 5,
                                    child: Text(
                                      grids["Place"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white.withOpacity(.9),
                                          fontSize: 38),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 55,
                                    right: 5,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        decoration:
                                            BoxDecoration(color: Colors.blue),
                                        child: Center(
                                            child: Text(
                                          grids["Rating"],
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 20,
                                      right: 5,
                                      child: Text(
                                        grids["Price"],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList()),
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Explore More")),
                  ))
            ],
          ),
        ]),
      ),
    );
  }

  void goTodetailed(BuildContext context, grid) {
    Navigator.pushNamed(context, "Package_Scrn", arguments: grid);
  }
}
