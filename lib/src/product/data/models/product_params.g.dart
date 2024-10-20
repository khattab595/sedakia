// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductParams _$ProductParamsFromJson(Map<String, dynamic> json) =>
    ProductParams(
      name: json['name'] as String?,
      regularPrice: (json['regular_price'] as num?)?.toDouble(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      stockStatus: json['stock_status'] as String?,
      shortDescription: json['short_description'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductParamsToJson(ProductParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'stock_status': instance.stockStatus,
      'short_description': instance.shortDescription,
      'categories': instance.categories,
    };
