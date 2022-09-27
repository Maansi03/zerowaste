import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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

class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GFG App"),
      ),
      body: Container(
          // Staggered Grid View starts here
          child: StaggeredGrid.count(
              axisDirection: AxisDirection.left,
              crossAxisCount: 4,
              children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("home1.jpeg"),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("logo1.jpeg"),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("home1.jpeg"),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset("home1.jpeg"),
            )
          ])),
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
