import 'package:flutter/material.dart';
import 'package:statefuldemo/attraction_before.dart';
import 'package:statefuldemo/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Attraction(),
    );
  }
}
