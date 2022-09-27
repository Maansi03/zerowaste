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
          child: Container(
            //height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.green.withOpacity(.6),
                Colors.white.withOpacity(.6),
              ]),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                    'There could be no definition to a successful life that does not include the the service to others. Invest yourself in the life of someone else today!!',
                    style: TextStyle(fontSize: 15)),
                // SizedBox(
                //   height: 10,
                // ),
                Text(
                    'You can visit our place to donate or we provide the pick up services as well.Please select the type of donation in the field given below.',
                    style: TextStyle(fontSize: 15)),
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
                ////////////////////////////////////////////////////////// Form /////////////////////////////////////////
                // Visibility(
                //   visible: viewVisible,
                //   child: Container(
                //     padding: EdgeInsets.only(left: 10, right: 10),
                //     child: Column(
                //       children: [
                //         TextField(
                //           autofocus: true,
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.circular(20),
                //                 borderSide: BorderSide(
                //                     width: 3, color: Colors.green)),
                //             labelText: 'Name',
                //             hintText: 'Enter Name',
                //             prefixIcon: Icon(Icons.people),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'Contact Number',
                //             hintText: 'Enter Contact Number',
                //             prefixIcon: Icon(Icons.phone),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'Address ',
                //             hintText: 'Enter Street NumberS',
                //             prefixIcon: Icon(Icons.location_on),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 10,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'Area',
                //             hintText: 'Enter Area',
                //           ),
                //         ),
                //         SizedBox(
                //           height: 10,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'Landmark',
                //             hintText: 'Enter Landmark',
                //           ),
                //         ),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderSide: BorderSide(color: Colors.green),
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'PickUp Date',
                //             hintText: 'Enter PickUp Date',
                //             prefixIcon: Icon(Icons.calendar_view_month),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'PickUp Time',
                //             hintText: 'Enter PickUp Time',
                //             prefixIcon: Icon(Icons.time_to_leave),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 20,
                //         ),
                //         TextField(
                //           style: TextStyle(fontSize: 20),
                //           decoration: InputDecoration(
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(20),
                //             ),
                //             labelText: 'Donation Items',
                //             hintText: 'Items you want to donate',
                //             prefixIcon: Icon(Icons.hail),
                //           ),
                //         ),
                //         SizedBox(
                //           height: 10,
                //         ),
                //         ElevatedButton(
                //             style: ElevatedButton.styleFrom(
                //               primary: Colors.green,
                //               // side: BorderSide(color: Colors.yellow, width: 5),
                //               textStyle: const TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 25,
                //                   fontStyle: FontStyle.normal),
                //               shape: BeveledRectangleBorder(
                //                   borderRadius:
                //                       BorderRadius.all(Radius.circular(10))),
                //             ),
                //             onPressed: submit,
                //             child: Text('Submit')),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(height: 300),
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
