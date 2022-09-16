import 'package:flutter/material.dart';

class Engineer extends StatelessWidget {
  const Engineer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Engineer'),
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
