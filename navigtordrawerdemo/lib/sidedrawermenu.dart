// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SideDrawerMenu extends StatelessWidget {
  const SideDrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(),
        ListTile(
          leading: Icon(Icons.home, color: Colors.pink[500]),
          title: Text('About SCIT'),
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          leading: Icon(Icons.school, color: Colors.pink[500]),
          title: Text('Cirriculum'),
          onTap: () {
            Navigator.pushNamed(context, '/curriculum');
          },
        ),
        ListTile(
          leading: Icon(Icons.location_city, color: Colors.pink[500]),
          title: Text('Contact'),
          onTap: () {
            Navigator.pushNamed(context, '/contact');
          },
        ),
      ],
    ));
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        15,
      ),
      color: Colors.pink[500],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'SCIT PSU Surat',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Faculty of Science and Industrial Technology',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Prince od Singkla University, Surat Thani campus',
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
