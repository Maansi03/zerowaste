import 'package:flutter/material.dart';

import 'homepage.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green),
        title: Container(
          child: Center(
            child: Text(
              "Contact Us",
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
              Color.fromARGB(255, 114, 213, 117).withOpacity(.1),
              Colors.white.withOpacity(.6),
            ]),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Office Address : ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text('Mini Secretariat, Kurukshetra'),
              SizedBox(
                height: 20,
                width: 1000,
              ),
              Text(
                'Mail Us At : ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text('abc@gmail.com'),
              SizedBox(
                height: 20,
                width: 1000,
              ),
              Text(
                'Call : ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text('+91 9412345678'),
              SizedBox(
                height: 10000,
                width: 1000,
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
      ),
    );
  }
}
