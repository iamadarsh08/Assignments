import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: List_with_Custom(),
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class List_with_Custom extends StatelessWidget {
  var image = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Alice_%28apple%29.jpg/180px-Alice_%28apple%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/9/90/Hapus_Mango.jpg",
    "https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?b=1&s=170667a&w=0&k=20&c=uiSdjIQkTr7S4gEdW_oB_5zfFYhpfe0LP-CryQl49w4=",
    "https://images.unsplash.com/photo-1603186741833-4a7cf699a8eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdyYXBlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=2000&q=60",
    "https://images.unsplash.com/photo-1587049352846-4a222e784d38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8d2F0ZXJtZWxvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=2000&q=60",
    "https://images.unsplash.com/photo-1585059895524-72359e06133a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a2l3aXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=2000&q=60",
    "https://images.unsplash.com/photo-1547514701-42782101795e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8T3JhbmdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=2000&q=60",
    "https://images.unsplash.com/photo-1602813812581-0713dae489da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVhY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60",
  ];
  var name = [
    "APPLE",
    "MANGO",
    "BANANA",
    "GRAPES",
    "WATERMELON",
    "KIWI",
    "ORANGE",
    "PEACH"
  ];
  var unit = ["Kg", "Doz", "Doz", "Kg", "Kg", "Pc", "Doz", "Doz"];
  var price = ["20", "30", "10", "8", "25", "40", "15", "25"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("PRODUCT LIST")),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.shopping_cart)],
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(List.generate(8, (index) {
            return Card(
              color: Colors.grey[300],
              child: ListTile(
                isThreeLine: true,
                leading: Image(
                  image: NetworkImage(image[index]),
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                ),
                //title: Text("Name:${name[index]}"),
                //style: TextStyle(fontWeight: FontWeight.bold)
                subtitle: RichText(
                  //maxLines: 1,
                  //overflow: TextOverflow.ellipsis,
                  text: TextSpan(text: "Name:", children: [
                    TextSpan(
                        text: name[index],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "\nUnit:", children: [
                      TextSpan(
                          text: unit[index],
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
                    TextSpan(text: "\nPrice:", children: [
                      TextSpan(
                          text: "\$${price[index]}",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])
                  ]),
                ),
                //Text("Name:${name[index]}\nUnit:${unit[index]}\nPrice:\$${price[index]}",textAlign: ,),
                trailing: ElevatedButton(
                    onPressed: () {}, child: Text("Add to Cart")),
              ),
            );
          })),
        ));
  }
}

// childrenDelegate: SliverChildBuilderDelegate((context, index) {           ///SliverChildBuilderDelegate
//   return const Card(
//     child: Text("CARD1"),
//
//     color: Colors.blue,
//   );
// }),
// childrenDelegate: SliverChildListDelegate(
// List.generate(51, (index) {
//   return Card(
//     child: Text("CARD1"),                                         ///SLiverChildLsitDelegate
//     color: Colors.blue,
// );
