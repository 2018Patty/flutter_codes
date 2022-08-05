import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.amber[400],
                  child: const Text('Container1'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.red[300],
                  child: const Text('Container2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.green[300],
                  child: const Text('Container3'),
                ),
              ),
            ],
          ),
           const SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.amber[400],
                  child: const Text('Container1'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.red[300],
                  child: const Text('Container2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.green[300],
                  child: const Text('Container3'),
                ),
              ),
            ],
          ),
           const SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.amber[400],
                  child: const Text('Container1'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.red[300],
                  child: const Text('Container2'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.green[300],
                  child: const Text('Container3'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.amber[300],
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildIcons(),
                buildIcons(),
                buildIcons(),
                buildIcons(),
                buildIcons(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Icon buildIcons() {
    return const Icon(
      Icons.star,
      size: 20,
    );
  }
}
