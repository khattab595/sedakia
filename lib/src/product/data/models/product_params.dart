import 'package:json_annotation/json_annotation.dart'; 

part 'product_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProductParams {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'regular_price')
  double? regularPrice;
  @JsonKey(name: 'sale_price')
  double? salePrice;
  @JsonKey(name: 'stock_status')
  String? stockStatus;
  @JsonKey(name: 'short_description')
  String? shortDescription;
  @JsonKey(name: 'categories')
  String? categories;

  ProductParams({this.name, this.regularPrice, this.salePrice, this.stockStatus, this.shortDescription, this.categories});

   factory ProductParams.fromJson(Map<String, dynamic> json) => _$ProductParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ProductParamsToJson(this);
}

