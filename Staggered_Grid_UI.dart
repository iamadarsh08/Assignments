import 'package:december_project/Others/List_Sample.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Staggered_Grid_UI(),
        theme: ThemeData(primarySwatch: Colors.orange),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Staggered_Grid_UI extends StatelessWidget {
  var caxis = [2, 2, 2, 2, 2, 2];
  var maxis = [3, 4, 3, 3, 4, 4];
  var img = [
    "https://images.unsplash.com/photo-1471306224500-6d0d218be372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1572364769167-198dcb7b520c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
    "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80",
    "https://images.unsplash.com/photo-1461696114087-397271a7aedc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c3Vuc2V0JTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=2000&q=60",
    "https://images.unsplash.com/photo-1516616370751-86d6bd8b0651?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=821&q=80"
  ];
  var hyt = <double>[150, 250, 150, 150, 150, 150];

  var txt = [
    "Cities of Newyork",
    "Top 10 facts about Burj Khalifa",
    "Benefits of Meditation",
    "The Golden Bridge Of SanFransisco",
    "Mysteries of Mount Everest",
    "Road Trips"
  ];
  var date = [
    "20-Jun-2013",
    "19-Jun-2013",
    "10-May-2013",
    "15-Aug-2010",
    "10-Jul-2015",
    "10-Jan-2016"
  ];
  var author = [
    "Neil Sheehan",
    "Nat Hentoff",
    "Joan Didion",
    "Lester Holt",
    "Shereen Bhan",
    "Robin Roberts"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Staggered Grid"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              children: List.generate(6, (index) {
                return StaggeredGridTile.count(
                    crossAxisCellCount: caxis[index],
                    mainAxisCellCount: maxis[index],
                    child: Card(color: Colors.grey[500],
                      child: Column(
                        children: [
                          Container(
                            height: hyt[index],
                            decoration: BoxDecoration(borderRadius:BorderRadius.circular(5) ,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(img[index]))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                    text: "${txt[index]}\n",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(date[index]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(author[index]),
                          )
                        ],
                      ),
                    ));
              })),
        ));
  }
}

/*children: List.generate(6, (index) {
              return Card(
                child: StaggeredGridTile.count(
                    crossAxisCellCount: 5,
                    mainAxisCellCount: 3,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: NetworkImage(img[index]))),
                        ),
                        SizedBox(
                          child: Text(txt[index]),
                        )
                      ],
                    )),
              );
            })*/
