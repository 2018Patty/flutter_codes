// ignore_for_file: sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:listdemo/bookcard.dart';
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

class ListDemo extends StatefulWidget {

  ListDemo({
    Key? key,
  }) : super(key: key);

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
   List<Book> books = [
    Book(name: 'Flutter', author: 'Peter', cover: 'python.jpg'),
    Book(name: 'Database', author: 'Peter', cover: 'python.jpg'),
    Book(name: 'Python', author: 'Peter', cover: 'python.jpg'),
    Book(name: 'IoT', author: 'Peter', cover: 'python.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: books
                .map(
                  (book) => BookCard(
                      book: book,
                      delete: () {
                        setState(() {
                          books.remove(book);
                        });
                        
                      }),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Card buildBookCard(Book book) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Text('${book.name}'), Text('${book.author}')],
        ),
      ),
      color: Colors.amber[300],
    );
  }
}
