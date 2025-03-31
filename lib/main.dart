import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:project1/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login screen',
      theme: ThemeData(brightness: Brightness.light),
      home: LoginScreen(),
    );
  }
}
