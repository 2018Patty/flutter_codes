// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:navigtordrawerdemo/chemistry.dart';
import 'package:navigtordrawerdemo/engineer.dart';
import 'package:navigtordrawerdemo/it.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Curriculum'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'IT',
                icon: Icon(Icons.computer),
              ),
              Tab(text: 'Engineer', icon: Icon(Icons.engineering)),
              Tab(text: 'Chem', icon: Icon(Icons.science)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IT(),
            Engineer(),
            Chemistry(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          color: Colors.pink[500],
          child: TabBar(
            tabs: [
            Tab(text: 'IT',icon: Icon(Icons.computer)),
            Tab(text: 'Engineer', icon: Icon(Icons.engineering)),
            Tab(text: 'Chem', icon: Icon(Icons.science)),
          ]),
        ),
      ),
    );
  }
}
