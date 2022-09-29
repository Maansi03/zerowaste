import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_zerowaste/homepage.dart';
import 'package:readmore/readmore.dart';
// import 'NekiDiwar.dart';
// import 'homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class Rethink extends StatefulWidget {
  @override
  State<Rethink> createState() => _Rethink();
}

class _Rethink extends State<Rethink> {
  launchURL() {
    // ignore: deprecated_member_use
    launch('https://youtu.be/x44VYWaslAM69+');
  }

  final List<String> imagesList = [
    'assets/rethinkslider.jpg',
    'assets/Rethinkslider2.jpg',

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
                  'RETHINK',
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
                  'Do you really need that? It’s the question you should be asking yourself according to this principle of sustainability. It implores one to question and understand their consumption habits and impact on the environment. If a person realises that natural resources are limited, they are likely to rethink their everyday choices.“Rethink” means that we should all be more mindful of our consumption habits to limit our impact on the environment. This principle is an invitation to rethink our daily choices, realizing that the natural resources of the planet are limited and need to be preserved also for our children.Rethink is the first of the 6 Rs of sustainability and the one people should look at with the highest priority. Rethinking is so important because it is the first mental step that could help us change the world and save the environment.For engineers working in product design, rethinking means that you should',
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
