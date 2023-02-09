import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Cities(),
        theme: ThemeData(primarySwatch: Colors.blue),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Cities extends StatelessWidget {
  var city = ['DELHI', 'LONDON', 'VANCOUVER', 'NEW YORK'];
  var country = ['INIDA', 'BRITAIN', 'CANADA', 'USA'];
  var population = ['19 Mil', '8 Mil', '2.4 Mil', '8.1 Mil'];
  var image = [
    "https://images.unsplash.com/photo-1587474260584-136574528ed5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVsaGl8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1529655683826-aba9b3e77383?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bG9uZG9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Concord_Pacific_Master_Plan_Area.jpg/1200px-Concord_Pacific_Master_Plan_Area.jpg",
    "https://media.istockphoto.com/id/1406960186/photo/the-skyline-of-new-york-city-united-states.jpg?b=1&s=170667a&w=0&k=20&c=pSGVgYmze-7eDhOt6jr5xgfVKbwDeh969KLEt-isd1A="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAMOUS CITIES"),
      ),
      body: ListView.builder(
        itemCount: city.length,
          itemBuilder: (BuildContext,index){
          return Card(
          child: ListTile(
            isThreeLine: true,
            leading: Image(image: NetworkImage(image[index]),width: 100,height: 600,fit: BoxFit.fill,),
            title: Text(city[index],style: const TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("${country[index]}\nPopulation:${population[index]}",),
          ),
          );
          }

      )
      );
  }
}
