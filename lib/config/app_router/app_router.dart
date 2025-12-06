import 'package:book_shop_bal/src/features/home_book/data/data_source/local/local_books.dart';
import 'package:book_shop_bal/src/features/home_book/data/repository_impl/home_books_repo_impl.dart';
import 'package:book_shop_bal/src/features/home_book/domain/usecase/home_books_usecase.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/bloc/home_books_bloc.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/screens/home_book_screen.dart';
import 'package:book_shop_bal/src/features/main_home/presentation/main_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src/features/home_book/data/data_source/remote/remote_books.dart'
    show RemoteBooks;
import '../Routes/routes.dart';

class AppRouter {
  MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainHomeScreen:
        return MaterialPageRoute(builder: (_) => const MainHomeScreen());

      case Routes.homeBookScreen:
        final localBooks = LocalBooks();
        final remoteBooks = RemoteBooks();
        final repo = HomeBooksRepositoryImplementation(localBooks, remoteBooks);
        final useCase = HomeBooksUseCase(homeBooksRepository: repo);
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                HomeBooksBloc(useCase)..add(GetHomeBooksEvent()),
            child: const HomeBookScreen(),
          ),
        );

      default:
        throw Exception('This route name does not exit');
    }
  }
}
