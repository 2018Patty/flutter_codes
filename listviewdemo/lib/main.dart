import 'package:flutter/material.dart';
import 'package:listviewdemo/addressbook.dart';
import 'package:listviewdemo/memberlist.dart';
import 'package:listviewdemo/mypost.dart';
import 'package:listviewdemo/mystory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List posts = [
    'Flutter is easy, I love it so much.',
    'My teacher is very strict, she complain all the time.',
    'The weather is good, we go out.'
  ];

  final List stories = ['Fun', 'Excited', 'Sad', 'Happy'];

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyStory(story: 'test',)
      // home: Home(posts: posts),
      home: MemberList(),
      // home: AddressBook(),
    );
  }
}

class Home extends StatelessWidget {
   Home({
    Key? key,
    required this.posts,
  }) : super(key: key);

  final List posts;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(5),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyStory(story: 'Happy'),
                  MyStory(story: 'Sad'),
                  MyStory(story: 'Excited'),
                  MyStory(story: 'Fun'),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return MyPost(post: posts[index]);
                  // return ListTile(
                  //   onTap: () {},
                  //   // leading:CircleAvatar(child: Text(member[index]['name'][0])),
                  //   leading: Container(
                  //     width: 60,
                  //     height: 60,
                  //     decoration: BoxDecoration(
                  //       color: Colors.pink,
                  //       borderRadius: BorderRadius.circular(60 / 2),
                  //       image: DecorationImage(
                  //         fit: BoxFit.cover,
                  //         image: NetworkImage(
                  //           member[index]['picture'],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  //   title: Text(member[index]['name']),
                  //   subtitle: Text(member[index]['name']),
                  //   trailing: GestureDetector(
                  //     child: const Icon(Icons.delete),
                  //     onTap: () {},
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
