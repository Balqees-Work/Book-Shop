import 'package:book_shop_bal/src/features/home_book/presentation/Widgets/see_all_books.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/Widgets/top_search_books.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/bloc/home_books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBookScreen extends StatelessWidget {
  const HomeBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBooksBloc>();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: BlocBuilder<HomeBooksBloc, HomeBooksState>(
            builder: (context, state) {
              if (state is GetHomeBooksState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    50.verticalSpace,
                    TopSearchBooks(books: bloc.books),
                    SeeAllBooks(books: bloc.books),
                    20.verticalSpace,
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
