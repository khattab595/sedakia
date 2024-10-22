import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'product_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProductParams {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'regular_price')
  String? regularPrice;
  @JsonKey(name: 'sale_price')
  String? salePrice;
  @JsonKey(name: 'stock_quantity')
  String? stockQuantity;
  @JsonKey(name: 'stock_status')
  String? stockStatus;
  @JsonKey(name: 'short_description')
  String? shortDescription;
  @JsonKey(name: 'categories')
  String ?categories;
  @JsonKey(name: 'images[]')
  @FileJsonConverter()
  File? images;

  ProductParams({this.name, this.regularPrice, this.salePrice,this.stockQuantity, this.stockStatus, this.shortDescription, this.categories,this.images});

   factory ProductParams.fromJson(Map<String, dynamic> json) => _$ProductParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ProductParamsToJson(this);
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