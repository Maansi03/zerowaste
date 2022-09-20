import 'package:flutter/material.dart';

class form extends StatefulWidget {
  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
            //  title: const Text('Material App Bar'),
            ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
