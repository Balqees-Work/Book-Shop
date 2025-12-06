import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';
import 'package:book_shop_bal/src/features/home_book/presentation/Widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSearchBooks extends StatelessWidget {
  final List<BooksEntity> books;
  const TopSearchBooks({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        50.verticalSpace,
        Text(
          'Top search books',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
        ),
        10.verticalSpace,
        SizedBox(
          height: 260.h,
          child: Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return BookCard(bookModel: books[index]);
              },
              itemCount: books.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) =>
                  10.horizontalSpace,
            ),
          ),
        ),
      ],
    );
  }
}
