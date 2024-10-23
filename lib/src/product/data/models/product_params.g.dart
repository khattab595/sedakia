// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductParams _$ProductParamsFromJson(Map<String, dynamic> json) =>
    ProductParams(
      name: json['name'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      stockQuantity: json['stock_quantity'] as String?,
      stockStatus: json['stock_status'] as String?,
      shortDescription: json['short_description'] as String?,
      categories: json['categories'] as String?,
      images: _$JsonConverterFromJson<String, File>(
          json['images[]'], const FileJsonConverter().fromJson),
    );

Map<String, dynamic> _$ProductParamsToJson(ProductParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('stock_quantity', instance.stockQuantity);
  writeNotNull('stock_status', instance.stockStatus);
  writeNotNull('short_description', instance.shortDescription);
  writeNotNull('categories', instance.categories);
  writeNotNull(
      'images[]',
      _$JsonConverterToJson<String, File>(
          instance.images, const FileJsonConverter().toJson));
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
