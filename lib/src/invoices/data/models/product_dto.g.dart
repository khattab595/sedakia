// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      price: json['price'] as int?,
      stock: json['stock'] as int?,
      commission: json['commission'] as int?,
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'price': instance.price,
      'stock': instance.stock,
      'commission': instance.commission,
      'favorite': instance.favorite,
    };
