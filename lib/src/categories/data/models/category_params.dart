import 'package:json_annotation/json_annotation.dart'; 

part 'category_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CategoryParams {
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

  CategoryParams({this.name, this.description, this.parent, this.slug, this.image});

   factory CategoryParams.fromJson(Map<String, dynamic> json) => _$CategoryParamsFromJson(json);

   Map<String, dynamic> toJson() => _$CategoryParamsToJson(this);
}

