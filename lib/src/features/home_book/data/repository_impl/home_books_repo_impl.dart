import 'package:book_shop_bal/src/features/home_book/data/data_source/local/local_books.dart';
import 'package:book_shop_bal/src/features/home_book/data/data_source/remote/remote_books.dart';
import 'package:book_shop_bal/src/features/home_book/data/model/book_model.dart';
import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';
import 'package:book_shop_bal/src/features/home_book/domain/repository/home_books_repo.dart';

class HomeBooksRepositoryImplementation extends HomeBooksRepository {
  final LocalBooks localBooks;
  final RemoteBooks remoteBooks;

  HomeBooksRepositoryImplementation(this.localBooks, this.remoteBooks);
  @override
  Future<List<BooksEntity>> getHomeBooks(bool isLocal) async {
    if (isLocal) {
      final books = localBooks.getLocalBooks();
      return books.toEntity();
    } else {
      return [];
    }
  }
}
