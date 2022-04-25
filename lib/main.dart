import 'package:flutter/material.dart';
import 'package:fyp/home_page.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Year Project',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: home_page(),
      routes: {
        //    "/login": (context) => login(),
        //   "/signup": (context) => signup(),
      },
    );
  }
}
