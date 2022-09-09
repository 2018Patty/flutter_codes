import 'package:flutter/material.dart';
import 'package:navigationdemo/welcome.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Welcome()),
                // );

                Navigator.pushNamed(
                  context,
                  '/welcome',
                  arguments: {
                    'id' : '123',
                    'name' : 'Pattaraporn',
                  },
                );
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
