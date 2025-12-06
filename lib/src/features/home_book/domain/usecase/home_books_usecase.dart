import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';
import 'package:book_shop_bal/src/features/home_book/domain/repository/home_books_repo.dart';

class HomeBooksUseCase {
  HomeBooksRepository homeBooksRepository;
  HomeBooksUseCase({required this.homeBooksRepository});

  Future<List<BooksEntity>> execute() async {
    return await homeBooksRepository.getHomeBooks(true);
  }
}
