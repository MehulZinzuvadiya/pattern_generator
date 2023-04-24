import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pattern_generator/View/second_type.dart';
import 'View/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'second',
    routes: {
      '/': (context) => HomeScreen(),
      'second':(context) => SecondPage(),
    },
  ));
}
