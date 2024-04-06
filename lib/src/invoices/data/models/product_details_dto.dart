import 'package:json_annotation/json_annotation.dart'; 

part 'product_details_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProductDetailsDto {
  @JsonKey(name: 'invoices')
  ProductInfo? product;
  @JsonKey(name: 'options')
  List<OptionDto>? options;
  @JsonKey(name: 'optins_names')
  List<String>? optinsNames;
  @JsonKey(name: 'options_ids')
  List<int>? optionsIds;
  @JsonKey(name: 'stocks_by_path')
  List<StocksByPath>? stocksByPath;
  @JsonKey(name: 'stocks_id_by_path')
  List<StocksIdByPath>? stocksIdByPath;
  // @JsonKey(name: 'offers_types')
  // OffersTypes? offersTypes;
  @JsonKey(name: 'is_favorite')
  bool? isFavorite;

  ProductDetailsDto({this.product, this.options, this.optinsNames, this.optionsIds, this.stocksByPath, this.stocksIdByPath,  this.isFavorite});

   factory ProductDetailsDto.fromJson(Map<String, dynamic> json) => _$ProductDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProductDetailsDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ProductInfo {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'country_id')
  int? countryId;
  @JsonKey(name: 'cid')
  int? cid;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Name_AR')
  String? nameAR;
  @JsonKey(name: 'Description')
  String? description;
  @JsonKey(name: 'Description_ad')
  String? descriptionAd;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'stock')
  int? stock;
  @JsonKey(name: 'commissionType')
  int? commissionType;
  @JsonKey(name: 'bonus')
  int? bonus;
  @JsonKey(name: 'top')
  bool? top;
  @JsonKey(name: 'exclusive')
  bool? exclusive;
  @JsonKey(name: 'freeShipping')
  bool? freeShipping;
  @JsonKey(name: 'drive_link')
  String? driveLink;
  @JsonKey(name: 'Width')
  int? width;
  @JsonKey(name: 'Height')
  int? height;
  @JsonKey(name: 'Length')
  int? length;
  @JsonKey(name: 'DimensionUnit')
  int? dimensionUnit;
  @JsonKey(name: 'Weight')
  int? weight;
  @JsonKey(name: 'WeightUnit')
  int? weightUnit;
  @JsonKey(name: 'net_commission')
  int? netCommission;

  ProductInfo({this.id, this.countryId, this.cid, this.name, this.nameAR, this.description, this.descriptionAd, this.image, this.code, this.price, this.stock, this.commissionType, this.bonus, this.top, this.exclusive, this.freeShipping, this.driveLink, this.width, this.height, this.length, this.dimensionUnit, this.weight, this.weightUnit, this.netCommission});

   factory ProductInfo.fromJson(Map<String, dynamic> json) => _$ProductInfoFromJson(json);

   Map<String, dynamic> toJson() => _$ProductInfoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class OptionDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'optionName')
  String? optionName;
  @JsonKey(name: 'values')
  List<ValueDto>? values;

  OptionDto({this.id, this.optionName, this.values});

   factory OptionDto.fromJson(Map<String, dynamic> json) => _$OptionDtoFromJson(json);

   Map<String, dynamic> toJson() => _$OptionDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ValueDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'option_id')
  int? optionId;
  @JsonKey(name: 'value')
  String? value;
  @JsonKey(name: 'DisplayType')
  String? displayType;
  @JsonKey(name: 'DisplayValue')
  String? displayValue;

  ValueDto({this.id, this.productId, this.optionId, this.value, this.displayType, this.displayValue});

   factory ValueDto.fromJson(Map<String, dynamic> json) => _$ValueDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ValueDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class StocksByPath {
  @JsonKey(name: 'path')
  List<int>? path;
  @JsonKey(name: 'stock')
  int? stock;

  StocksByPath({this.path, this.stock});

   factory StocksByPath.fromJson(Map<String, dynamic> json) => _$StocksByPathFromJson(json);

   Map<String, dynamic> toJson() => _$StocksByPathToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class StocksIdByPath {
  @JsonKey(name: 'path')
  List<int>? path;
  @JsonKey(name: 'id')
  int? id;

  StocksIdByPath({this.path, this.id});

   factory StocksIdByPath.fromJson(Map<String, dynamic> json) => _$StocksIdByPathFromJson(json);

   Map<String, dynamic> toJson() => _$StocksIdByPathToJson(this);
}

// @JsonSerializable(ignoreUnannotated: false)
// class OffersTypes {
//   @JsonKey(name: '1')
//   String? 1;
//
//   OffersTypes({this.1});
//
//    factory OffersTypes.fromJson(Map<String, dynamic> json) => _$OffersTypesFromJson(json);
//
//    Map<String, dynamic> toJson() => _$OffersTypesToJson(this);
// }

