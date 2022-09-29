import 'package:flutter/material.dart';
import 'package:flutter_zerowaste/6R/Recycle.dart';
import 'package:flutter_zerowaste/6R/Reduce.dart';
import 'package:flutter_zerowaste/6R/Refuse.dart';
import 'package:flutter_zerowaste/6R/Repair.dart';
import 'package:flutter_zerowaste/6R/Rethink.dart';
import 'package:flutter_zerowaste/6R/Reuse.dart';

import 'package:flutter_zerowaste/homepage.dart';
import 'package:flutter_zerowaste/menu.dart';

import '../aboutNekiDiwar.dart';

class SixRHome extends StatefulWidget {
  @override
  State<SixRHome> createState() => _SixRHomeState();
}

class _SixRHomeState extends State<SixRHome> {
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
        child: Column(
          children: [
            // Stack(children: [
            //   Container(
            //     decoration: const BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //             // to make the image curved
            //             bottomLeft: Radius.circular(36),
            //             bottomRight: Radius.circular(36))),
            //     child: Image.asset(
            //       'assets/Document.png',
            //     ),
            //   ),
            // ]),
            const SizedBox(
              height: 20,
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reduce()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/Reduce_Slider4.jpg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('R1=REDUCE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Recycle()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/Recyclehome1.jpg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('R2=RECYCLE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reuse()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/reuseplastichome1.jpg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('R3=REUSE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Refuse()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/plasticworldhome1.jpg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('R4=REFUSE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Repair()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/repairhome1.jpg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('R5=REPAIR',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rethink()));
                  },
                  child: Card(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(42),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/rethinkhome1.jpg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('R6=RETHINK',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //------------
              ],
            )
          ],
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
