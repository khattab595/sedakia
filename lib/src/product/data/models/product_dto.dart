import 'package:json_annotation/json_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ProductDto {
  @JsonKey(name: 'data')
  List<ProductData>? data;
  @JsonKey(name: 'total_products')
  int? totalProducts;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'current_page')
  int? currentPage;

  ProductDto(
      {this.data, this.totalProducts, this.totalPages, this.currentPage,});

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ProductData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'short_description')
  String? shortDescription;
  @JsonKey(name: 'price')
  String? price;
  @JsonKey(name: 'regular_price')
  String? regularPrice;
  @JsonKey(name: 'stock_quantity')
  String? salePrice;
  @JsonKey(name: 'sale_price')
  String? stockQuantity;
  @JsonKey(name: 'stock_status')
  String? stockStatus;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'parent_id')
  int? parentId;

  ProductData({
    this.id,
    this.name,
    this.shortDescription,
    this.price,
    this.regularPrice,
    this.stockQuantity,
    this.stockStatus,
    this.imageUrl,
    this.salePrice,
    this.parentId,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}
