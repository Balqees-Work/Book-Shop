import 'package:book_shop_bal/src/features/home_book/data/data_source/local/local_books.dart';
import 'package:book_shop_bal/src/features/home_book/data/data_source/remote/remote_books.dart';
import 'package:book_shop_bal/src/features/home_book/data/repository_impl/home_books_repo_impl.dart';
import 'package:book_shop_bal/src/features/home_book/domain/usecase/home_books_usecase.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/bloc/home_books_bloc.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/screens/home_book_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//part of 'barrel_main_home.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localBooks = LocalBooks();
    final remoteBooks = RemoteBooks();
    final repo = HomeBooksRepositoryImplementation(localBooks, remoteBooks);
    final useCase = HomeBooksUseCase(homeBooksRepository: repo);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            BlocProvider(
              create: (context) =>
                  HomeBooksBloc(useCase)..add(GetHomeBooksEvent()),
              child: const HomeBookScreen(),
            ),

            const Center(child: Text('Search')),
            const Center(child: Text('profile')),
          ],
        ),
        bottomNavigationBar: Container(
          color: Color(0xFF301CA0),
          child: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.menu_book_sharp), text: "Search"),
              Tab(icon: Icon(Icons.favorite), text: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
