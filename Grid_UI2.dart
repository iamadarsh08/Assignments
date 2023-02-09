import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Grid_UI2(),
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Grid_UI2 extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1589642380614-4a8c2147b857?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "https://images.unsplash.com/photo-1568749750364-053fd74b4115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1618403088890-3d9ff6f4c8b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80",
    "https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1582966772680-860e372bb558?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
  ];
  var nme = ["Bag", "Sunglass", "Belt", "Necklace", "EarRings", "Socks"];
  var price = ["120", "58", "35", "98", "34", "12"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu_sharp),
          title: const Text(
            "SHRINE",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 60, child: Icon(Icons.filter_list_sharp))
          ],
        ),
        body: GridView.builder(
            itemCount: img.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(img[index]))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5),
                      child: Column(
                        children: [
                          Container(alignment: Alignment.bottomLeft,
                            child: Text(nme[index],
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          ),
                          Container(alignment:Alignment.bottomLeft,child: Text("\$${price[index]}",style: TextStyle(fontWeight: FontWeight.bold),))
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
