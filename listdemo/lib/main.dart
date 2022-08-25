// ignore_for_file: sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'book.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListDemo(),
    );
  }
}

class ListDemo extends StatelessWidget {
  final List<Book> books = [
    Book(name: 'Flutter', author: 'Peter'),
    Book(name: 'Database', author: 'Peter'),
    Book(name: 'Python', author: 'Peter'),
    Book(name: 'IoT', author: 'Peter'),
  ];

  ListDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: books
              .map(
                (book) => buildBookCard(book),
              )
              .toList(),
        ),
      ),
    );
  }

  Card buildBookCard(Book book) {
    return Card(
                margin: EdgeInsets.fromLTRB(30,20,30,10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('${book.name}'),
                      Text('${book.author}')
                    ],
                  ),
                ),
                color: Colors.amber[300],

              );
  }
}
