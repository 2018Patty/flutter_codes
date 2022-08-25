// ignore_for_file: prefer_initializing_formals

class Book {
  String name = "";
  String author = "";

  //Old style
  // Book(String name, String author) {
  //   this.name = name;
  //   this.author = author;
  // }

  //Name parameters
  Book({required this.name, required this.author});
}
