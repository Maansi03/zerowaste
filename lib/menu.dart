import 'package:flutter/material.dart';

import 'nekiDiwar.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset(
            'assets/logo.jpg',
            height: 150,
            width: 150,
          ),
          ListTile(
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.home),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          ListTile(
            title: Text(
              'Events',
              style: TextStyle(fontSize: 20),
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
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.auto_stories),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          ListTile(
            title: Text(
              'News Articles',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.newspaper),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          ListTile(
            title: Text(
              'Statistics',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.analytics),
          ),
          const Divider(
            color: Colors.green,
            height: 5,
          ),
          ListTile(
            title: Text(
              'Contact Us',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.home),
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
