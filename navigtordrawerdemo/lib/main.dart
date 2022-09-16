// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigtordrawerdemo/contact.dart';
import 'package:navigtordrawerdemo/curriculum.dart';
import 'package:navigtordrawerdemo/myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home' :(context) => MyHome(),
        '/curriculum' :(context) => Curriculum(),
        '/contact':(context) => Contact(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: const MyHome(),
    );
  }
}
