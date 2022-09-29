import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_zerowaste/homepage.dart';
import 'package:readmore/readmore.dart';

import 'package:url_launcher/url_launcher.dart';

class Reduce extends StatefulWidget {
  @override
  State<Reduce> createState() => _Reduce();
}

class _Reduce extends State<Reduce> {
  launchURL() {
    // ignore: deprecated_member_use
    launch('https://youtu.be/iO3SA4YyEYU');
  }

  final List<String> imagesList = [
    'assets/Reduce_Slider1.jpg',
    'assets/Reduce_Slider4.jpg',
    'assets/Reduce_Slider6.jpg',
    'assets/Reduce_slider3.jpg',
    'R1Reduce.jpg',
    // 'https://thumbs.dreamstime.com/b/landscape-grass-field-green-environment-public-park-use-as-natural-background-backdrop-78426893.jpg',
    // 'https://image.shutterstock.com/image-illustration/green-screen-looping-animated-background-260nw-1702327750.jpg',

    // 'https://drive.google.com/uc?export=view&id=1WkSGq2ZmWDmS9U-SaxrwV5-nys3gfEeT',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Container(
          //padding: EdgeInsets.only(top: statusbarHeight),

          child: Center(
            child: Text(
              "Zero Waste",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green.withOpacity(.6),
              Colors.white.withOpacity(.6),
            ]),
          ),
          child: Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                    scrollDirection: Axis.horizontal

                    // autoPlay: true,
                    ),
                items: imagesList
                    .map(
                      (item) => Center(
                        child: Image.asset(
                          item,
                          // fit: BoxFit.cover,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'REDUCE',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ReadMoreText(
                  'Buy only what you need because a better way to reduce waste is by not creating it. It is the best and most important way of minimising your impact on the Earth’s environment. It means that you try to reduce the amount of materials that you use and also the resources such as fuel and water that you use.Here are some ways:Only buy what you need, Choose products with less packaging, Buy in bulk, Look for items that you can re-use, Turning off lights when you are not in the room, Unplugging electronics when not in use. It will also lower your utility bill',
                  trimLines: 2,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                onPressed: launchURL,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
                child: Text('Video'),
              ),
              //           ElevatedButton(
              //             child: Text('Want to donate ?'),
              //             style: ElevatedButton.styleFrom(
              //               primary: Colors.green,
              //               // side: BorderSide(color: Colors.yellow, width: 5),
              //               textStyle: const TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 25,
              //                   fontStyle: FontStyle.normal),
              //               shape: BeveledRectangleBorder(
              //                   borderRadius: BorderRadius.all(Radius.circular(10))),
              //             ),
              //             onPressed: () {
              //               Navigator.push(context,
              //                   MaterialPageRoute(builder: (context) => NekiDiwar()));
              //             },
              //           ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
      ),
    );

    // floatingActionButton: FloatingActionButton(
    //   child: Icon(Icons.home),
    //   backgroundColor: Colors.green,
    //   onPressed: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => MyHomePage()),
    //     );
    //   },
    // ),
  }
}
