// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Chemistry extends StatelessWidget {
  const Chemistry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Chemistry'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Back Home'),
            )
          ],
        ),
      ),
    );
  }
}
