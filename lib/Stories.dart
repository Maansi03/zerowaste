import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../homepage.dart';

class Story extends StatefulWidget {
  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ZERO WASTE',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.green.withOpacity(.6),
                      Colors.white.withOpacity(.6),
                    ])),
                    child: Center(
                        child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                          Image.asset('Story1.jpg'),
                          const SizedBox(
                            height: 20,
                          ),
                          const ReadMoreText(
                            //margin: EdgeInsets.all(20),
                            'For management of waste we can recycle and compost For example:\nDry waste: keep separate plastic for dry waste like flowers, papers, plastic, glass and metal as they can be reused and recycled.\nWet waste: wet waste like vegetables, kitchen waste, fruit peels, tea leaves, egg shells and fish scales etc. should be kept in separate plastic as they can be used as compost.\nHazardous waste: Hazardous waste includes e-waste i.e. batteries, wires, electronic toys, remotes, bulbs, tube lights; toxic waste i.e paints, insecticides, their containers; and biomedical waste i.e expired meicines, tubes, used cosmetics, thermometer and used syringes. These should be disposed of daily.',

                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Center(
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Image.asset('Story2.jpg'),
                                const SizedBox(
                                  height: 20,
                                ),
                                const ReadMoreText(
                                  //margin: EdgeInsets.all(20),
                                  'To motivate people to boycott single-use plastic and polybags, a sculpture of turtle has been prepared with the help of 87,297 used polybags, at the Urvashi Gahat of Brahma Sarovar in Kurukshetra. It was also an attempt to make a new world record of creating a sculpture with highest number of used polybags.With the help of volunteers, NIC department, Saksham Yuva and students of various schools, the sculpture was preparedIn-charge of National Informatics Centre Kurukshetra Vinod Singla, said “The purpose behind selecting turtle for the sculpture was to show that turtles live for hundreds of years, live under water and on land, and even they are not safe now due to the presence of polybags in water and on land.” ',
                                  trimLines: 2,

                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ]))))));

    // floatingActionButton: FloatingActionButton(
    // child: Icon(Icons.home),
    // backgroundColor: Colors.green,
    // onPressed: () {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => MyHomePage()),
    //   );
    //   },
    // );
  }
}
