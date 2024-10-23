// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryParams _$CategoryParamsFromJson(Map<String, dynamic> json) =>
    CategoryParams(
      name: json['name'] as String?,
      description: json['description'] as String?,
      parent: json['parent'] as String?,
      slug: (json['slug'] as List<dynamic>?)?.map((e) => e as String).toList(),
      image: _$JsonConverterFromJson<String, File>(
          json['image'], const FileJsonConverter().fromJson),
    );

Map<String, dynamic> _$CategoryParamsToJson(CategoryParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('parent', instance.parent);
  writeNotNull('slug', instance.slug);
  writeNotNull(
      'image',
      _$JsonConverterToJson<String, File>(
          instance.image, const FileJsonConverter().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
