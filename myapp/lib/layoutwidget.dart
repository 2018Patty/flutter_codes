import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paradise Restuarant'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/feature.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(40),
            //   child: Image.asset(
            //     'images/feature.jpg',
            //      width: 300,
            //     // height: 200,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            const Icon(
              Icons.delivery_dining_outlined,
              size: 100.0,
              color: Colors.blue,
            ),
            const Text(
              'Welcome to Paradise Restuarant',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: 20,
                letterSpacing: 2.0,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Order Now!'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(15),
                textStyle: const TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
