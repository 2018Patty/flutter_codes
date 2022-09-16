// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:navigtordrawerdemo/sidedrawermenu.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.all(
          20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 70,
            ),
            Text(
              'SCIT PSU Surat',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.pink[500],
              ),
            ),
            Text(
              'Prince od Singkla University',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[400],
                letterSpacing: 3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'คณะวิทยาศาสตร์และเทคโนโลยีอุตสาหกรรมคือองค์กรที่ทำหน้าที่สอนวิจัยและบริการวิชาการให้เป็นไปตามวิสัยทัศน์และพันธกิจของคณะซึ่งได้รับการจัดตั้งเป็นหน่วยงานภายในของมหาวิทยาลัยสงขลานครินทร์ตามมติที่ประชุมสภามหาวิทยาลัยสงขลานครินทร์ในคราวประชุมครั้งที่ 306 4/2551) เมื่อวันที่ 31 พฤษภาคม 2551')
          ],
        ),
      ),
      //endDrawer for the right side
      drawer: SideDrawerMenu(),
    );
  }
}


