import 'package:flutter/material.dart';
// import 'package:dashboard/HomeScreen/HomeScreen.dart';
import 'package:dashboard/LoginScreen/LoginMain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KA Dash',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home: LoginMain(),
    );
  }
}

// Use File Directories to see Structure of Application