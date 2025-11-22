part of '../../barrel_home.dart';

class ModelBook {
  final int? id;
  final String? title;
  final String? author;
  final String? description;
  final String? image;
  final double? rating;
  final double? price;

  const ModelBook({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.image,
    required this.rating,
    required this.price,
  });
}

// mapper model to entity
extension MapperModelToEntity on ModelBook {
  EntityBook toEntity() {
    return EntityBook(
      id: id,
      title: title,
      author: '$author',
      description: description,
      image: image,
      rating: rating,
      price: price,
    );
  }
}

// mapper List<ModelBook> to List<EntityBook>
extension MapperModelListToEntityList on List<ModelBook> {
  List<EntityBook> toEntityList() {
    return map((model) => model.toEntity()).toList();
  }
}
