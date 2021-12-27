import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key); // default constructor
  MyApp._internal(); //private named constructor

  static final MyApp instance = MyApp._internal(); //single instance - singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
