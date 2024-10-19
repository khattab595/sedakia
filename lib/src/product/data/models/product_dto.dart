import 'package:json_annotation/json_annotation.dart'; 

part 'product_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProductDto {
  @JsonKey(name: 'id')
  double? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'slug')
  String? slug;
  @JsonKey(name: 'date_created')
  DateCreated? dateCreated;
  @JsonKey(name: 'date_modified')
  DateModified? dateModified;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'featured')
  bool? featured;
  @JsonKey(name: 'catalog_visibility')
  String? catalogVisibility;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'short_description')
  String? shortDescription;
  @JsonKey(name: 'sku')
  String? sku;
  @JsonKey(name: 'global_unique_id')
  String? globalUniqueId;
  @JsonKey(name: 'price')
  String? price;
  @JsonKey(name: 'regular_price')
  String? regularPrice;
  @JsonKey(name: 'sale_price')
  String? salePrice;
  @JsonKey(name: 'total_sales')
  double? totalSales;
  @JsonKey(name: 'tax_status')
  String? taxStatus;
  @JsonKey(name: 'tax_class')
  String? taxClass;
  @JsonKey(name: 'manage_stock')
  bool? manageStock;
  @JsonKey(name: 'stock_status')
  String? stockStatus;
  @JsonKey(name: 'backorders')
  String? backorders;
  @JsonKey(name: 'low_stock_amount')
  String? lowStockAmount;
  @JsonKey(name: 'sold_individually')
  bool? soldIndividually;
  @JsonKey(name: 'weight')
  String? weight;
  @JsonKey(name: 'length')
  String? length;
  @JsonKey(name: 'width')
  String? width;
  @JsonKey(name: 'height')
  String? height;
  @JsonKey(name: 'parent_id')
  double? parentId;
  @JsonKey(name: 'reviews_allowed')
  bool? reviewsAllowed;
  @JsonKey(name: 'purchase_note')
  String? purchaseNote;
  @JsonKey(name: 'menu_order')
  double? menuOrder;
  @JsonKey(name: 'post_password')
  String? postPassword;
  @JsonKey(name: 'virtual')
  bool? virtual;
  @JsonKey(name: 'downloadable')
  bool? downloadable;
  @JsonKey(name: 'category_ids')
  List<double>? categoryIds;
  @JsonKey(name: 'shipping_class_id')
  double? shippingClassId;
  @JsonKey(name: 'image_id')
  String? imageId;
  @JsonKey(name: 'gallery_image_ids')
  List<double>? galleryImageIds;
  @JsonKey(name: 'download_limit')
  double? downloadLimit;
  @JsonKey(name: 'download_expiry')
  double? downloadExpiry;
  @JsonKey(name: 'average_rating')
  String? averageRating;
  @JsonKey(name: 'review_count')
  double? reviewCount;
  @JsonKey(name: 'categories')
  List<String>? categories;

  ProductDto({this.id, this.name, this.slug, this.dateCreated, this.dateModified, this.status, this.featured, this.catalogVisibility, this.description, this.shortDescription, this.sku, this.globalUniqueId, this.price, this.regularPrice, this.salePrice, this.totalSales, this.taxStatus, this.taxClass, this.manageStock, this.stockStatus, this.backorders, this.lowStockAmount, this.soldIndividually, this.weight, this.length, this.width, this.height, this.parentId, this.reviewsAllowed, this.purchaseNote, this.menuOrder, this.postPassword, this.virtual, this.downloadable, this.categoryIds, this.shippingClassId, this.imageId, this.galleryImageIds, this.downloadLimit, this.downloadExpiry, this.averageRating, this.reviewCount, this.categories});

   factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProductDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class DateCreated {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'timezone_type')
  double? timezoneType;
  @JsonKey(name: 'timezone')
  String? timezone;

  DateCreated({this.date, this.timezoneType, this.timezone});

   factory DateCreated.fromJson(Map<String, dynamic> json) => _$DateCreatedFromJson(json);

   Map<String, dynamic> toJson() => _$DateCreatedToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class DateModified {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'timezone_type')
  double? timezoneType;
  @JsonKey(name: 'timezone')
  String? timezone;

  DateModified({this.date, this.timezoneType, this.timezone});

   factory DateModified.fromJson(Map<String, dynamic> json) => _$DateModifiedFromJson(json);

   Map<String, dynamic> toJson() => _$DateModifiedToJson(this);
}

