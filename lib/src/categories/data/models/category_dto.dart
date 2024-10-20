import 'package:json_annotation/json_annotation.dart'; 

part 'category_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CategoryDto {
  @JsonKey(name: 'data')
  List<Data>? data;
  @JsonKey(name: 'total_categories')
  int? totalCategories;
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'per_page')
  int? perPage;

  CategoryDto({this.data, this.totalCategories, this.page, this.perPage});

   factory CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'parent')
  int? parent;
  @JsonKey(name: 'slug')
  String? slug;
  @JsonKey(name: 'image')
  String? image;

  Data({this.id, this.name, this.description, this.parent, this.slug, this.image});

   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

   Map<String, dynamic> toJson() => _$DataToJson(this);
}

