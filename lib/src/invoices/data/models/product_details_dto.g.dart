// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsDto _$ProductDetailsDtoFromJson(Map<String, dynamic> json) =>
    ProductDetailsDto(
      product: json['product'] == null
          ? null
          : ProductInfo.fromJson(json['product'] as Map<String, dynamic>),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      optinsNames: (json['optins_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      optionsIds: (json['options_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      stocksByPath: (json['stocks_by_path'] as List<dynamic>?)
          ?.map((e) => StocksByPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      stocksIdByPath: (json['stocks_id_by_path'] as List<dynamic>?)
          ?.map((e) => StocksIdByPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['is_favorite'] as bool?,
    );

Map<String, dynamic> _$ProductDetailsDtoToJson(ProductDetailsDto instance) =>
    <String, dynamic>{
      'product': instance.product,
      'options': instance.options,
      'optins_names': instance.optinsNames,
      'options_ids': instance.optionsIds,
      'stocks_by_path': instance.stocksByPath,
      'stocks_id_by_path': instance.stocksIdByPath,
      'is_favorite': instance.isFavorite,
    };

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) => ProductInfo(
      id: json['id'] as int?,
      countryId: json['country_id'] as int?,
      cid: json['cid'] as int?,
      name: json['Name'] as String?,
      nameAR: json['Name_AR'] as String?,
      description: json['Description'] as String?,
      descriptionAd: json['Description_ad'] as String?,
      image: json['image'] as String?,
      code: json['code'] as String?,
      price: json['price'] as int?,
      stock: json['stock'] as int?,
      commissionType: json['commissionType'] as int?,
      bonus: json['bonus'] as int?,
      top: json['top'] as bool?,
      exclusive: json['exclusive'] as bool?,
      freeShipping: json['freeShipping'] as bool?,
      driveLink: json['drive_link'] as String?,
      width: json['Width'] as int?,
      height: json['Height'] as int?,
      length: json['Length'] as int?,
      dimensionUnit: json['DimensionUnit'] as int?,
      weight: json['Weight'] as int?,
      weightUnit: json['WeightUnit'] as int?,
      netCommission: json['net_commission'] as int?,
    );

Map<String, dynamic> _$ProductInfoToJson(ProductInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_id': instance.countryId,
      'cid': instance.cid,
      'Name': instance.name,
      'Name_AR': instance.nameAR,
      'Description': instance.description,
      'Description_ad': instance.descriptionAd,
      'image': instance.image,
      'code': instance.code,
      'price': instance.price,
      'stock': instance.stock,
      'commissionType': instance.commissionType,
      'bonus': instance.bonus,
      'top': instance.top,
      'exclusive': instance.exclusive,
      'freeShipping': instance.freeShipping,
      'drive_link': instance.driveLink,
      'Width': instance.width,
      'Height': instance.height,
      'Length': instance.length,
      'DimensionUnit': instance.dimensionUnit,
      'Weight': instance.weight,
      'WeightUnit': instance.weightUnit,
      'net_commission': instance.netCommission,
    };

OptionDto _$OptionDtoFromJson(Map<String, dynamic> json) => OptionDto(
      id: json['id'] as int?,
      optionName: json['optionName'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => ValueDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OptionDtoToJson(OptionDto instance) => <String, dynamic>{
      'id': instance.id,
      'optionName': instance.optionName,
      'values': instance.values,
    };

ValueDto _$ValueDtoFromJson(Map<String, dynamic> json) => ValueDto(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      optionId: json['option_id'] as int?,
      value: json['value'] as String?,
      displayType: json['DisplayType'] as String?,
      displayValue: json['DisplayValue'] as String?,
    );

Map<String, dynamic> _$ValueDtoToJson(ValueDto instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'option_id': instance.optionId,
      'value': instance.value,
      'DisplayType': instance.displayType,
      'DisplayValue': instance.displayValue,
    };

StocksByPath _$StocksByPathFromJson(Map<String, dynamic> json) => StocksByPath(
      path: (json['path'] as List<dynamic>?)?.map((e) => e as int).toList(),
      stock: json['stock'] as int?,
    );

Map<String, dynamic> _$StocksByPathToJson(StocksByPath instance) =>
    <String, dynamic>{
      'path': instance.path,
      'stock': instance.stock,
    };

StocksIdByPath _$StocksIdByPathFromJson(Map<String, dynamic> json) =>
    StocksIdByPath(
      path: (json['path'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$StocksIdByPathToJson(StocksIdByPath instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
    };
