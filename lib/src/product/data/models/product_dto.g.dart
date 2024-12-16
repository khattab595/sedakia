// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalProducts: json['total_products'] as int?,
      totalPages: json['total_pages'] as int?,
      currentPage: json['current_page'] as int?,
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total_products': instance.totalProducts,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String?,
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      stockQuantity: json['sale_price'] as String?,
      stockStatus: json['stock_status'] as String?,
      imageUrl: json['image_url'] as String?,
      salePrice: json['stock_quantity'] as String?,
      parentId: json['parent_id'] as int?,
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'stock_quantity': instance.salePrice,
      'sale_price': instance.stockQuantity,
      'stock_status': instance.stockStatus,
      'image_url': instance.imageUrl,
      'parent_id': instance.parentId,
    };
