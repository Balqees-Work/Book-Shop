import 'dart:ffi';

class BooksEntity {
  final String title;
  final String description;
  final String img;
  final double rating;

  BooksEntity({
    required this.title,
    required this.description,
    required this.img,
    required this.rating,
  });
}
