import 'package:book_shop_bal/src/features/home_book/data/model/book_model.dart';

import '../../../../../../generated/assets.dart';

class LocalBooks {
  List<BookModel> getLocalBooks() {
    return [
      BookModel(
        title: "The adventure of tom",
        description:
            "A story of racial injustice and childhood innocence by Harper Lee.",
        img: Assets.imagesBook1,
        rating: 5,
      ),
      BookModel(
        title: "Jane Eyre",
        description:
            "The beginning of Harry Potter’s magical journey by J.K. Rowling.",
        img: Assets.imagesBook2,
        rating: 2.5,
      ),
      BookModel(
        title: "Sherlock Holmes",
        description:
            "A classic romance exploring manners and morality by Jane Austen.",
        img: Assets.imagesBook3,
        rating: 3,
      ),
      BookModel(
        title: "Harry Potter",
        description:
            "A tale of love, wealth, and the American Dream by F. Scott Fitzgerald.",
        img: Assets.imagesBook4,
        rating: 3.5,
      ),
      BookModel(
        title: "War and peace",
        description: "A journey of self-discovery and dreams by Paulo Coelho.",
        img: Assets.imagesBook5,
        rating: 4,
      ),
      BookModel(
        title: "The old man",
        description:
            "A dystopian novel about surveillance and totalitarianism by George Orwell",
        img: Assets.imagesBook6,
        rating: 4.5,
      ),
    ];
  }
}
