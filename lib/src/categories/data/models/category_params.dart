import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'category_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CategoryParams {
  @JsonKey(name: 'name',includeIfNull: false)
  String? name;
  @JsonKey(name: 'description',includeIfNull: false)
  String? description;
  @JsonKey(name: 'parent',includeIfNull: false)
  String? parent;
  @JsonKey(name: 'slug',includeIfNull: false)
  List<String>? slug;
  @JsonKey(name: 'image',includeIfNull: false)
  @FileJsonConverter()
  File? image;

  CategoryParams(
      {this.name, this.description, this.parent, this.slug, this.image});

  factory CategoryParams.fromJson(Map<String, dynamic> json) =>
      _$CategoryParamsFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryParamsToJson(this);
}

class FileJsonConverter extends JsonConverter<File, String> {
  const FileJsonConverter();

  @override
  File fromJson(String json) {
    return File(json);
  }

  @override
  String toJson(File object) {
    return object.path;
  }
}
