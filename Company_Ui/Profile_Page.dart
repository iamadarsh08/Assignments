import 'package:december_project/Company_Ui/Rewards_page.dart';
import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  var icoons = [
    Icons.wallet_outlined,
    Icons.receipt,
    Icons.info,
    Icons.logout,
  ];
  var txt = [
    "My Wallet",
    "Terms & Policies",
    "About",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue[900],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_rounded),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1589810264340-0ce27bfbf751?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJhY2tncm91bmQlMjBncmFkaWVudHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"))),
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    child: BackButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Reward_Page()));
                      },
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 165,
                    child: Text(
                      "Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 145,
                    child: Text(
                      "Trevor Daniel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 120,
                    child: Text(
                      "trevor1997@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 330,
                    left: 160,
                    child: Text(
                      "9746587841",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 350,
                      left: 155,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              minimumSize: Size(50, 30)),
                          onPressed: () {},
                          child: Text("Edit Profile")))
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                itemBuilder: (BuildContext, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white38,
                    ),
                    child: ListTile(
                      leading: Icon(
                        icoons[index],
                        color: Colors.amber[900],
                      ),
                      title: Text(
                        txt[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.amber[900],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
