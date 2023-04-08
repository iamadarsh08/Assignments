import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BankUi(),
        theme: ThemeData(primarySwatch: Colors.indigo),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class BankUi extends StatelessWidget {
  var icoons = [
    Icons.account_box,
    Icons.miscellaneous_services,
    Icons.payments,
    Icons.attach_money,
    Icons.schedule,
    Icons.qr_code_scanner_sharp,
  ];
  var txt = [
    "My Account",
    "e Service",
    "Payments",
    "  Fund\nTransfer",
    "Scheduled\n Payments",
    "Scan to pay",
  ];
  var lead = [
    "WDRL",
    "SND",
    "RCV",
    "WDRL",
  ];
  var titl = [
    "185245785623",
    "145812547863",
    "178452985236",
    "198563254785",
  ];
  var sub = [
    "10-03-2023",
    "01-03-2023",
    "22-12-2022",
    "10-12-2022",
  ];
  var trail = [
    "12,500",
    "22,500",
    "20,000",
    "10,000",
  ];

  BankUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Wrap(
          children: const [
            Text("Welcome!"),
            Text(
              " Scott",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: const [
          SizedBox(
            width: 50,
            child: Icon(Icons.qr_code_scanner),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.blueGrey.shade600),
                  height: 150,
                  width: 380,
                  child: Stack(
                    children: const [
                      Positioned(
                        top: 25,
                        left: 20,
                        child: Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 140,
                        child: Text(
                          "Scott Adkins",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      Positioned(
                        top: 65,
                        right: 129,
                        child: Text(
                          "Balance : \u{20B9} 98,750",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      ),
                      Positioned(
                        top: 65,
                        right: 105,
                        child: Icon(
                          Icons.visibility,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Positioned(
                        top: 85,
                        right: 31,
                        child: Text(
                          "Account Number : 127801451045",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 8,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  children: const [
                    Icon(
                      Icons.arrow_right,
                      size: 20,
                    ),
                    Text(
                      "Services",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 260,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 5,
                    right: 5,
                  ),
                  child: Card(
                    color: Colors.blueGrey.shade600,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Center(
                            child: Icon(
                              icoons[index],
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            txt[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 8,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Wrap(children: const [
                  Icon(
                    Icons.arrow_right,
                    size: 20,
                  ),
                  Text(
                    "Transactions",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: lead.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 10,
                      right: 10,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Colors.blueGrey,
                        height: 90,
                        width: 380,
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              lead[index],
                            ),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              titl[index],
                            ),
                          ),
                          subtitle: Text(
                            sub[index],
                          ),
                          trailing: Text(
                            trail[index],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
