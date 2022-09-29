import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../homepage.dart';

class Events extends StatefulWidget {
  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ZERO WASTE',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green.withOpacity(.6),
              Colors.white.withOpacity(.6),
            ])
          ),
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image.asset('eventsmain.jpg'),
                const SizedBox(
                  height: 20,
                ),
                const ReadMoreText(
                  //margin: EdgeInsets.all(20),
                  'Waste management is essential in todays society. Due to an increase in population, the generation of waste is getting doubled day by day. Moreover, the increase in waste is affecting the lives of many people.To maintain a healthy life, proper hygiene and sanitation are necessary.  It is only possible with proper waste management.',
                  trimLines: 2,

                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
          },
        )));
  }
}