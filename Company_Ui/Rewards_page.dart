import 'package:december_project/Company_Ui/Profile_Page.dart';
import 'package:december_project/Company_Ui/Second%20Page.dart';
import 'package:flutter/material.dart';

class Reward_Page extends StatefulWidget {
  @override
  State<Reward_Page> createState() => _Reward_PageState();
}

class _Reward_PageState extends State<Reward_Page> {
  var lead = [
    "01",
    "02",
    "03",
    "04",
    "05",
    "06",
    "07",
    "08",
  ];

  var title = [
    "Order ID - 1542487595",
    "Order ID - 1587457898",
    "Order ID - 1526589784",
    "Order ID - 1678452056",
    "Order ID - 1678459562",
    "Order ID - 1623024578",
    "Order ID - 1745789877",
    "Order ID - 1714154785",
  ];

  var date = [
    "Dec/31/2022",
    "Jan/31/2022",
    "Jan/31/2023",
    "Jan/31/2023",
    "Jan/31/2023",
    "Feb/08/2023",
    "Mar/25/2023",
    "Apr/15/2023",
  ];
  List pages = [
    Reward_Page(),
    Profile_Page(),
  ];
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (tapedIndex) {
              setState(() {
                index = tapedIndex;
              });
            },
            currentIndex: index,
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
                height: 300,
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
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => Company_Second()));
                        },
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                        top: 60,
                        left: 125,
                        child: Text(
                          "Rewards Wallet",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )),
                    Positioned(
                      top: 90,
                      left: 15,
                      child: Container(
                        margin: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(25)),
                        height: 90,
                        width: 170,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Total Balance",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "14,325",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Image(
                                    height: 35,
                                    width: 35,
                                    image: AssetImage(
                                        "assets/Icons/Awicons-Vista-Artistic-Coin.256.png"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 20,
                      child: Image(
                        height: 140,
                        width: 150,
                        image: AssetImage(
                            "assets/Icons/Archigraphs-Christmas-Present.512.png"),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 30,
                      child: Container(
                        height: 70,
                        width: 210,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Redeemable",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("13,000"),
                                      ),
                                      Image(
                                          height: 20,
                                          width: 20,
                                          image: AssetImage(
                                              "assets/Icons/Awicons-Vista-Artistic-Coin.256.png"))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "|",
                              style: TextStyle(fontSize: 50),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15, top: 8),
                              child: Column(
                                children: [
                                  Text(
                                    "Expired",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("3,000"),
                                      ),
                                      Image(
                                          height: 20,
                                          width: 20,
                                          image: AssetImage(
                                              "assets/Icons/Awicons-Vista-Artistic-Coin.256.png"))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                height: 60,
                width: 400,
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  dividerColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.wallet_giftcard),
                          Text("Rewards"),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.receipt),
                          Text("Transactions"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 8,
                  itemBuilder: (BuildContext, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                      ),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            lead[index],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            title[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Valid Till",
                                style: TextStyle(color: Colors.grey[800]),
                              ),
                            ),
                            Text(
                              date[index],
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
