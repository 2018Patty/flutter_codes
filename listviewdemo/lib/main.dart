import 'package:flutter/material.dart';
import 'package:listviewdemo/mypost.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List posts = [
    'Flutter is easy, I love it so much.',
    'My teacher is very strict, she complain all the time.',
        'The weather is good, we go out.'
  ];
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return MyPost(post: posts[index]);
            },
          ),
        ),
      ),
    );
  }
}
