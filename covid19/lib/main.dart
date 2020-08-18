import 'package:flutter/material.dart';
import 'package:covid19/Page1.dart';
import 'package:flutter/services.dart' ;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 Updates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Robot",
      ),
      home: IntroPage(),
//    ),
    );
  }
}

