import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'homepage.dart';

class statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green),
        title: Container(
          //padding: EdgeInsets.only(top: statusbarHeight),

          child: Center(
            child: Text(
              "Statistics",
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 114, 213, 117).withOpacity(.1),
            Colors.white.withOpacity(.6),
          ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //  Image.asset('1.jpg'),
              SizedBox(
                height: 10,
              ),
              Text(
                'Plastic Waste Data from Kurukshetra',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  //margin: EdgeInsets.all(20),
                  'A total of 110  items were collected\nMLPs constituted the highest amount of waste at 25%\nThis was followed by polythene bags (LDPE) at 22%\nHDPE constituted 18% \nTetrapacks and synthetic fibers made up 10.7% and 7.1% of the waste respectively',

                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Image.asset(
                'Stats.jpeg',
                height: 200,
                width: 800,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Text(
                'Plastic waste in India',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'According to the Central Pollution Control Board (CPCB), India generates close to 26,000 tonnes of plastic a day, and over 10,000 tonnes a day of plastic waste remains uncollected.\nAccording to a Federation of Indian Chambers of Commerce and Industry (FICCI) study the plastic processing industry is estimated to grow to 22 million tonnes (MT) a year by 2020 from 13.4 MT in 2015 and nearly half of this is single-use plastic.\nThough India’s per capita plastic consumption is less than 11 kg, (nearly a tenth of the United States of America 109 kg), the country’s plastic consumption will only grow larger in the future.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold
                    ),
                  )),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 900,
              )
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
      ),
    );
  }
}
