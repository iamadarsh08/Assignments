import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Drawer_UI(),
            theme: ThemeData(primarySwatch: Colors.blue),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          ),
    ),
  );
}

class Drawer_UI extends StatelessWidget {
  @override
  var icns = [
    Icons.dashboard_outlined,
    Icons.rocket_launch_outlined,
    Icons.apartment_outlined,
    Icons.line_axis_sharp,
    Icons.person_add_alt_1_outlined,
    Icons.my_library_books_outlined,
    Icons.connect_without_contact_outlined
  ];
  var txt = [
    "Dashboard",
    "Projects",
    "Companies",
    "Subscription",
    "Clients",
    "Library",
    "Contact"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
      ),
      drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.green, Colors.redAccent])),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/640px-Elon_Musk_Royal_Society_%28crop2%29.jpg"),
                      ),
                      title: Text(
                        "Elon Musk",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      subtitle: Text(
                        "elonmusk@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
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
                            color: Colors.white,
                          ),
                          title: Text(
                            txt[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }),
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Logout"))
              ],
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 250,
                width: 400,
                child: Container(
                  child: const Image(
                    image: NetworkImage(
                        "https://media.gettyimages.com/id/1215628293/photo/elon-musk-founder-and-ceo-of-spacex-participates-in-a-press-conference-at-the-kennedy-space.jpg?s=612x612&w=0&k=20&c=SErcDpVJILYdR2XIfc2Tl4J8rZBLxMcJgJL_WS4ltv4="),
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(height: 50, width: 380,
              child: Text("Elon Reeve Musk",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(child: Text(
              "Elon Reeve Musk (born June 28, 1971) is a business magnate and investor. He is the founder, CEO and chief engineer of SpaceX; angel investor, CEO and product architect of Tesla, Inc.; owner and CEO of Twitter, Inc.; founder of The Boring Company; co-founder of Neuralink and OpenAI; and president of the philanthropic Musk Foundation. With an estimated net worth of around \$196 billion as of February 15, 2023, primarily from his ownership stakes in Tesla and SpaceX,Musk is the second-wealthiest person in the world, according to both the Bloomberg Billionaires Index and Forbes's real-time billionaires list.",
              style:TextStyle(fontSize: 15),),),
          )
        ],
      ),
    );
  }
}
