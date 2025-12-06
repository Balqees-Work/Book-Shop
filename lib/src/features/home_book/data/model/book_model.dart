import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';

class BookModel {
  final String title;
  final String description;
  final String img;
  final double rating;

  BookModel({
    required this.title,
    required this.description,
    required this.img,
    required this.rating,
  });
}

extension BooksToEntity on BookModel {
  BooksEntity toEntity() {
    return BooksEntity(
      title: title,
      description: description,
      img: img,
      rating: rating,
    );
  }
}

extension BooksListToEntity on List<BookModel> {
  List<BooksEntity> toEntity() {
    return map((book) => book.toEntity()).toList();
  }
}
