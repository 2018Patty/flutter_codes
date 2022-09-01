import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyStory(story: 'test',)
      home: Home(posts: posts),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
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
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
