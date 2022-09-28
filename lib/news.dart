import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'homepage.dart';

//List of Cards with size

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  BackGroundTile(backgroundColor: Colors.red, icondata: Icons.home),
  BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.ac_unit),
  BackGroundTile(backgroundColor: Colors.pink, icondata: Icons.landscape),
  BackGroundTile(backgroundColor: Colors.green, icondata: Icons.portrait),
  BackGroundTile(
      backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
  BackGroundTile(backgroundColor: Colors.blue, icondata: Icons.access_alarms),
  BackGroundTile(
      backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
  BackGroundTile(backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
  BackGroundTile(
      backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
  BackGroundTile(
      backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
];

class news extends StatefulWidget {
  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green.withOpacity(.6),
            Colors.white.withOpacity(.6),
          ]),
        ),
        // Staggered Grid View starts here
        child: StaggeredGrid.count(
          // axisDirection: AxisDirection.left,
          crossAxisCount: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("News3.jpeg"),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("News2.jpeg"),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("News1.jpeg"),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("News4.jpeg"),
            ),
            SizedBox(
              height: 300,
            ),
          ],
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

class BackGroundTile extends StatefulWidget {
  final Color backgroundColor;
  final IconData icondata;

  BackGroundTile({required this.backgroundColor, required this.icondata});

  @override
  State<BackGroundTile> createState() => _BackGroundTileState();
}

class _BackGroundTileState extends State<BackGroundTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backgroundColor,
      child: Icon(widget.icondata, color: Colors.white),
    );
  }
}
