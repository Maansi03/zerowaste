import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_zerowaste/homepage.dart';
import 'package:readmore/readmore.dart';

import 'package:url_launcher/url_launcher.dart';

class Refuse extends StatefulWidget {
  @override
  State<Refuse> createState() => _Refuse();
}

class _Refuse extends State<Refuse> {
  launchURL() {
    // ignore: deprecated_member_use
    launch('https://youtu.be/-Cf0mYUdSRs');
  }

  final List<String> imagesList = [
    'assets/Refuse_slider2.jpg',
    'assets/Refuse_sliderhd2.jpg',
    'assets/refuse_sliderhd3.png',

    // 'https://thumbs.dreamstime.com/b/landscape-grass-field-green-environment-public-park-use-as-natural-background-backdrop-78426893.jpg',
    // 'https://image.shutterstock.com/image-illustration/green-screen-looping-animated-background-260nw-1702327750.jpg',

    // 'https://drive.google.com/uc?export=view&id=1WkSGq2ZmWDm/Se3x9U-SaxrwV5-nys3gfEeT',
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
                  'REFUSE',
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
                  'Refuse single use plastics such as plastic straws and other disposable plastics (cutlery, plates, and cups). Buy clothes made from natural fibres such as cotton, linen, and wool. Make a shift to slower more simple living.Before you recycle, hold up. Can you fix it? Expand the shelf life of your possessions. Make the most out of whatever you buy and have, and only pass it on when there’s nothing left to do with it.',
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
