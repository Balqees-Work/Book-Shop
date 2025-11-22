part of '../../barrel_home.dart';

// TODO: add Equatable
class EntityBook extends Object {
  final int? id;
  final String? title;
  final String? author;
  final String? description;
  final String? image;
  final double? rating;
  final double? price;

  const EntityBook({
    this.id,
    this.title,
    this.author,
    this.description,
    this.image,
    this.rating,
    this.price,
  });

  // copy with
  EntityBook copyWith({
    int? id,
    String? title,
    String? author,
    String? description,
    String? image,
    double? rating,
    double? price,
  }) {
    return EntityBook(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      description: description ?? this.description,
      image: image ?? this.image,
      rating: rating ?? this.rating,
      price: price ?? this.price,
    );
  }

  String formatPrice() {
    String twoDecimal = price!.toStringAsFixed(2);
    // add dollar sign
    return '\$$twoDecimal';
  }

  // toString
  @override
  String toString() {
    return 'EntityBook(id: $id, title: $title, author: $author, description: $description, image: $image, rating: $rating, price: $price)';
  }
}
// EntityBook data = EntityBook(id:5, title: "title", author: "author", description: "description", image: "image", rating: 5.0, price: 5.0);

// // service1
// data = data.copyWith(author:'new author');

// //service2
// data = data.copyWith(title:'new title');
