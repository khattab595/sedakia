import 'package:app/src/categories/data/models/category_dto.dart';

class CategoryData {
  CategoryData({
    this.id,
    this.name,
    this.description,
    this.parent,
    this.slug,
    this.image,
  });

  int? id;
  String? name;
  String? description;
  int? parent;
  String? slug;
  String? image;

  factory CategoryData.fromDto(Data json) {
    return CategoryData(
      id: json.id,
      name: json.name,
      description: json.description,
      parent: json.parent,
      slug: json.slug,
      image: json.image,
    );
  }
}
