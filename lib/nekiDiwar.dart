// ignore: file_names
import 'package:flutter/material.dart';

import 'homepage.dart';

// ignore: use_key_in_widget_constructors

class NekiDiwar extends StatefulWidget {
  // NekiDiwar({super.key});

  @override
  State<NekiDiwar> createState() => _NekiDiwarState();
}

class _NekiDiwarState extends State<NekiDiwar> {
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
    return Scaffold(
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
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomRight,
          //     colors: [
          //       Color.fromARGB(255, 198, 220, 238),
          //       Color.fromARGB(255, 238, 167, 162),
          //     ],
          //   ),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Select Donation Type :',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          child: RadioListTile(
                            value: 0,
                            groupValue: _groupValue,
                            title: const Text("Visit Us",
                                style: TextStyle(fontSize: 20)),
                            onChanged: (newValue) => setState(
                              () => _groupValue = newValue!,
                            ),
                            activeColor: Colors.red,
                            selected: false,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RadioListTile(
                          value: 1,
                          groupValue: _groupValue,
                          title: const Text("Pickup",
                              style: TextStyle(fontSize: 20)),
                          onChanged: (newValue) => setState(
                            () => _groupValue = newValue!,
                          ),
                          activeColor: Colors.red,
                          selected: false,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),

////////////////////////////////////////////////////////// Form /////////////////////////////////////////
                  Visibility(
                    visible: viewVisible,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          TextField(
                            autofocus: true,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.green)),
                              labelText: 'Name',
                              hintText: 'Enter Name',
                              prefixIcon: Icon(Icons.people),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Contact Number',
                              hintText: 'Enter Contact Number',
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Address ',
                              hintText: 'Enter Street NumberS',
                              prefixIcon: Icon(Icons.location_on),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Area',
                              hintText: 'Enter Area',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Landmark',
                              hintText: 'Enter Landmark',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'PickUp Date',
                              hintText: 'Enter PickUp Date',
                              prefixIcon: Icon(Icons.calendar_view_month),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'PickUp Time',
                              hintText: 'Enter PickUp Time',
                              prefixIcon: Icon(Icons.time_to_leave),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              labelText: 'Donation Items',
                              hintText: 'Items you want to donate',
                              prefixIcon: Icon(Icons.hail),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                // side: BorderSide(color: Colors.yellow, width: 5),
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                shape: BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                              onPressed: submit,
                              child: Text('Submit')),
                        ],
                      ),
                    ),
                  ),
                ],
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
