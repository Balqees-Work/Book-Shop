import 'package:book_shop_bal/src/features/home_book/domain/entity/books_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//part of 'barrel_main_home.dart';

class BookCard extends StatelessWidget {
  final BooksEntity bookModel;
  const BookCard({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 5.h),
      width: 160.w,
      child: Card(
        child: Column(
          mainAxisSize: .min,
          children: [
            10.verticalSpace,
            ClipRRect(
              borderRadius: .circular(15.r),
              child: Image(
                image: AssetImage(bookModel.img),
                width: 130.w,
                height: 150.h,
                fit: .fill,
              ),
            ),
            10.verticalSpace,
            Text(
              bookModel.title,
              style: TextStyle(fontSize: 12.sp, fontWeight: .w700),
              textAlign: .center,
            ),
            5.verticalSpace,
            Padding(
              padding: .symmetric(horizontal: 10.w),
              child: Text(
                bookModel.description,
                style: TextStyle(fontSize: 8.sp, fontWeight: .w500),
                textAlign: .center,
              ),
            ),

            Row(
              mainAxisAlignment: .center,
              children: List.generate(5, (index) {
                if (index < bookModel.rating.floor()) {
                  return const Icon(Icons.star, color: Colors.yellow, size: 20);
                } else if (index < bookModel.rating) {
                  return const Icon(
                    Icons.star_half,
                    color: Colors.yellow,
                    size: 20,
                  );
                } else {
                  return const Icon(Icons.star, color: Colors.grey, size: 20);
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
