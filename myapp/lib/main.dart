import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/containerwidget.dart';
import 'package:myapp/layoutwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutWidget(),
    );
  }
}

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Center(
        child: Text(
          'Hello Pattaraporn!',
          //  style: TextStyle(
          //   fontFamily: 'Kanit',
          //   fontSize: 20,
          //   color: Colors.blue,
          //   letterSpacing: 2.0,
          // ),
          style: GoogleFonts.kanit(
            textStyle: const TextStyle(
              fontSize: 50.0,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
