import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';

abstract class HomeBooksRepository {
  Future<List<BooksEntity>> getHomeBooks(bool isLocal);
}
