// ignore_for_file: prefer_initializing_formals

class Book {
  String name = "";
  String author = "";
  String cover = "";

  // String? c; allow nullsafety

  //Old style
  // Book(String name, String author) {
  //   this.name = name;
  //   this.author = author;
  // }

  //Name parameters
  Book({required this.name, required this.author, required this.cover});
}
