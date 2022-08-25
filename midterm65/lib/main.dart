// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cirriculum(),
    );
  }
}

class Cirriculum extends StatelessWidget {
  const Cirriculum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: buildAppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const Header(title: 'Bachelor Degree'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                            child: DeptCard(dept: 'Information Technology')),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: DeptCard(dept: 'Enginerring')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    const Header(title: 'Bachelor Degree'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                            child: DeptCard(dept: 'Information Technology')),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: DeptCard(dept: 'Enginerring')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                menuIcon(
                  name: 'News',
                  iconpic: Icons.newspaper,
                ),
                menuIcon(
                  name: 'Cirriculums',
                  iconpic: Icons.grade,
                ),
                menuIcon(
                  name: 'Contact',
                  iconpic: Icons.phone,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.purple[100],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.purple[600],
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Cirriculum',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 30,
                  color: Colors.purple[600],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.purple[600],
            ),
            child: const Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}

class menuIcon extends StatelessWidget {
  final String name;
  final IconData iconpic;
  const menuIcon({
    Key? key,
    required this.name,
    required this.iconpic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        10,
      ),
      child: Column(
        children: [
          Icon(
            iconpic,
            color: Colors.purple[600],
            size: 30,
          ),
          Text(name,
              style: TextStyle(
                color: Colors.purple[600],
                fontSize: 15,
              ))
        ],
      ),
    );
  }
}

class DeptCard extends StatelessWidget {
  final String dept;
  const DeptCard({
    Key? key,
    required this.dept,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/picdemo.png',
              width: 200,
              // height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            dept,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String title;
  const Header({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              children: const [
                Text('See more'),
                Icon(Icons.arrow_forward_outlined),
              ],
            )
          ],
        ),
      ],
    );
  }
}
