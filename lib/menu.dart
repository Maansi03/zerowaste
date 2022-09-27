import 'package:flutter/material.dart';
import 'package:flutter_zerowaste/aboutus.dart';
import 'package:flutter_zerowaste/news.dart';
import 'package:flutter_zerowaste/statistics.dart';
import 'contactUs.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset(
            'assets/zerowaste.jpeg',
            height: 160,
            width: 160,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            child: ListTile(
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          ListTile(
            title: Text(
              'Events',
              style: TextStyle(fontSize: 16),
            ),
            leading: Icon(Icons.event),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          ListTile(
            title: Text(
              'Stories',
              style: TextStyle(fontSize: 16),
            ),
            leading: Icon(Icons.auto_stories),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => News()));
            },
            child: ListTile(
              title: Text(
                'News Articles',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(Icons.newspaper),
            ),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => statistics()));
            },
            child: ListTile(
              title: Text(
                'Statistics',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(Icons.analytics),
            ),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs()));
            },
            child: ListTile(
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
        ],
      ),
    );
  }
}
