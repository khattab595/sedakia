// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryParams _$CategoryParamsFromJson(Map<String, dynamic> json) =>
    CategoryParams(
      name: json['name'] as String?,
      description: json['description'] as String?,
      parent: json['parent'] as int?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CategoryParamsToJson(CategoryParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'parent': instance.parent,
      'slug': instance.slug,
      'image': instance.image,
    };
