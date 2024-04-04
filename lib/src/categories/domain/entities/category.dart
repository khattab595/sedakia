
import '../../data/models/category_dto.dart';

class Category {
  int? id;
  String? categoryName;
  String? image;

  Category({this.id, this.categoryName, this.image});

  factory Category.fromDto(CategoryDto json) {
    return Category(
      id: json.id,
      categoryName: json.categoryName,
      image: json.image,
    );
  }
}

