import 'package:flutter/material.dart';
import 'package:protfolio/hoemscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}