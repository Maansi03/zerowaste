import 'package:flutter/material.dart';
import 'package:flutter_zerowaste/aboutNekiDiwar.dart';
import 'package:flutter_zerowaste/club.dart';

import 'menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          //padding: EdgeInsets.only(top: statusbarHeight),

          child: Center(
            child: Text(
              "Zero Waste",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
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
            Stack(children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        // to make the image curved
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                child: Image.asset(
                  'assets/home1.jpeg',
                  // height: 300,
                  // fit: BoxFit.cover,
                  // width: double.infinity,
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutNekiDiwar()));
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
                              'assets/nekidiwar.jpeg',
                            ),
                          ),
                          Positioned(
                            top: 140,
                            left: 130,
                            child: Text('Neki Ki Deewar',
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
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Club()));
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
                              'assets/Clubmain.jpeg',
                            ),
                          ),
                          // Positioned(
                          //   top: 140,
                          //   left: 130,
                          //   child: Text('Club',
                          //       style: TextStyle(
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 24)),
                          // ),
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
    );
  }
}
