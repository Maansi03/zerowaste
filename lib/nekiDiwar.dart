import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class NekiDiwar extends StatefulWidget {
  @override
  State<NekiDiwar> createState() => _NekiDiwarState();
}

class _NekiDiwarState extends State<NekiDiwar> {
  launchMap() {
    // ignore: deprecated_member_use
    launch('https://goo.gl/maps/PqqNKax6ZwrF946C6');
  }

  launchForm() {
    // ignore: deprecated_member_use
    launch('https://forms.gle/QgoXbMM4UWHYUoS86');
  }

  int _groupValue = -1;
  bool viewVisible = true;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void submit() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            //padding: EdgeInsets.only(top: statusbarHeight),

            child: Center(
              child: Text(
                "Donate",
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
            //height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 114, 213, 117).withOpacity(.1),
                Colors.white.withOpacity(.6),
              ]),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'There could be no definition to a successful life that does not include the the service to others. Invest yourself in the life of someone else today!!',
                      style: TextStyle(fontSize: 15)),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'You can visit our place to donate or we provide the pick up services as well.Please select the type of donation in the field given below.',
                      style: TextStyle(fontSize: 15)),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Select Donation Type :',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  width: 170,
                  child: ElevatedButton(
                      onPressed: launchMap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Background color
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.location_on),
                          Text('Visit Us'),
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  width: 170,
                  child: ElevatedButton(
                      onPressed: launchForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Background color
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.time_to_leave),
                          Text('Pick Up'),
                        ],
                      )),
                ),

                SizedBox(height: 1000),
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
      ),
    );
  }
}
