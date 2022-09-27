import 'package:flutter/material.dart';
import 'package:flutter_zerowaste/test.dart';
import 'homepage.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: test());
  }
}
