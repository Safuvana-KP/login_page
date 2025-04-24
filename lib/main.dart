import 'package:flutter/material.dart';
import 'package:project1/Cart_Provider.dart';
import 'login_screen.dart';
import 'package:project1/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

      MyApp());
}

class MyApp extends StatelessWidget {


   const MyApp( {super.key});
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
