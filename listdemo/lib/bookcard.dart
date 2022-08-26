// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'book.dart';

class BookCard extends StatelessWidget {
  Book book;
  VoidCallback delete;
  BookCard({required this.book, required this.delete});

  // const BookCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightBlue[100],
      ),
      width: double.infinity,
      height: 200,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/${book.cover}",
                width: 100,
                height: 200,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(book.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  book.author,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    delete();
                  },
                  icon: Icon(
                    Icons.delete_outlined,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
