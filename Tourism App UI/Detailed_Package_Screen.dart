import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:december_project/Tourism%20App%20UI/Datas.dart';
import 'package:flutter/material.dart';

class Detailed_Package_Screeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final grid = ModalRoute.of(context)?.settings.arguments;
    final place = places.firstWhere((element) => element["Id"] == grid);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 250,
            width: 400,
            child: Stack(children: [
              Positioned(
                top: 60,
                right: 10,
                child: SizedBox(
                  height: 150,
                  width: 170,
                  child: Image(
                    image: NetworkImage(place["Image"]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 20,
                  child: Text(
                    place["Place"] /*"Seychelles"*/,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )),
              Positioned(
                top: 100,
                left: 20,
                child: RatingBar.readOnly(
                  filledColor: Colors.yellow.shade700,
                  halfFilledColor: Colors.yellow.shade700,
                  emptyColor: Colors.yellow.shade700,
                  initialRating: 4.5,
                  isHalfAllowed: true,
                  halfFilledIcon: Icons.star_half,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  size: 25,
                ),
              ),
              Positioned(
                  top: 106,
                  left: 150,
                  child: Text(
                    place["Rating"] /*"4.7"*/,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  )),
            ]),
          ),
          SizedBox(
            height: 190,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    "About Place",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Text(
                    place["About"],
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("Famous Locations",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 200,
              child: CarouselSlider(
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 100,
                        width: 410,
                        child: Image(
                          image: NetworkImage(place["Slider"]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 100,
                        width: 410,
                        child: Image(
                          image: NetworkImage(place["Slider1"]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 100,
                        width: 410,
                        child: Image(
                          image: NetworkImage(place["Slider2"]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ),
          SizedBox(
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 290, top: 10),
                  child: Text("Packages",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220, top: 20),
                  child: (Text(
                    place["Rate"],
                    style: TextStyle(fontSize: 18),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220, top: 20),
                  child: Text(place["Rate1"], style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 20),
                  child: Text(place["Rate2"], style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 20),
                  child: Text(place["Rate3"], style: TextStyle(fontSize: 18)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Center(child: const Text("Explore More"))),
                )),
          )
        ]),
      ),
    );
  }
}

