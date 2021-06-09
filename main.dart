import 'package:flutter/material.dart';
import 'package:zeeshan_portfolio/CustomBarDriver.dart';

import 'exfile.dart';



void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "Zeeshan Bhati",
      debugShowCheckedModeBanner: false,
      home: Testing()
    );

  }
}

