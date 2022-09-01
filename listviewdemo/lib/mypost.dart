import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  final String post;
  MyPost({ required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.pink[300],
      ),
      child:  Text(
          post,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          )),
    );
  }
}
