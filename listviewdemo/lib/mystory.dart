import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String story;
  MyStory({required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pink[300],
      ),
      child: Center(
        child: Text(
          story,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
