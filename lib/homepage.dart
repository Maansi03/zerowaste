import 'package:flutter/material.dart';
import 'package:flutter_zerowaste/aboutNekiDiwar.dart';
import 'package:flutter_zerowaste/club.dart';
import 'package:flutter_zerowaste/6R/sixHome.dart';

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
            Stack(children: [
              Card(
                elevation: 15,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          // to make the image curved
                          bottomLeft: Radius.circular(56),
                          bottomRight: Radius.circular(56))),
                  child: Image.asset(
                    'assets/home1.jpeg',
                    // height: 300,
                    // fit: BoxFit.cover,
                    // width: double.infinity,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            ListView(
              padding: EdgeInsets.all(10),
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
                  child: Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/ND.jpeg',
                            height: 200,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListView(
              padding: EdgeInsets.all(10),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Club()));
                  },
                  child: Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/Clubmain.jpeg',
                            height: 200,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListView(
              padding: EdgeInsets.all(10),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixRHome()));
                  },
                  child: Container(
                    height: 200,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/6r22.jpg',
                            height: 200,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
