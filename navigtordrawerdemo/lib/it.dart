// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IT extends StatelessWidget {
  const IT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('IT'),
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
