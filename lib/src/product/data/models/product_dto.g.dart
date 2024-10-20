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
      slug: json['slug'] as String?,
      dateCreated: json['date_created'] == null
          ? null
          : DateCreated.fromJson(json['date_created'] as Map<String, dynamic>),
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      catalogVisibility: json['catalog_visibility'] as String?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      sku: json['sku'] as String?,
      globalUniqueId: json['global_unique_id'] as String?,
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      dateOnSaleFrom: json['date_on_sale_from'] as String?,
      dateOnSaleTo: json['date_on_sale_to'] as String?,
      totalSales: json['total_sales'] as int?,
      taxStatus: json['tax_status'] as String?,
      taxClass: json['tax_class'] as String?,
      manageStock: json['manage_stock'] as bool?,
      stockQuantity: json['stock_quantity'] as String?,
      stockStatus: json['stock_status'] as String?,
      backorders: json['backorders'] as String?,
      lowStockAmount: json['low_stock_amount'] as String?,
      soldIndividually: json['sold_individually'] as bool?,
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      parentId: json['parent_id'] as int?,
      reviewsAllowed: json['reviews_allowed'] as bool?,
      purchaseNote: json['purchase_note'] as String?,
      menuOrder: json['menu_order'] as int?,
      postPassword: json['post_password'] as String?,
      virtual: json['virtual'] as bool?,
      downloadable: json['downloadable'] as bool?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      shippingClassId: json['shipping_class_id'] as int?,
      imageId: json['image_id'] as String?,
      downloadLimit: json['download_limit'] as int?,
      downloadExpiry: json['download_expiry'] as int?,
      averageRating: json['average_rating'] as String?,
      reviewCount: json['review_count'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'date_created': instance.dateCreated,
      'status': instance.status,
      'featured': instance.featured,
      'catalog_visibility': instance.catalogVisibility,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'global_unique_id': instance.globalUniqueId,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'date_on_sale_from': instance.dateOnSaleFrom,
      'date_on_sale_to': instance.dateOnSaleTo,
      'total_sales': instance.totalSales,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'stock_status': instance.stockStatus,
      'backorders': instance.backorders,
      'low_stock_amount': instance.lowStockAmount,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
      'parent_id': instance.parentId,
      'reviews_allowed': instance.reviewsAllowed,
      'purchase_note': instance.purchaseNote,
      'menu_order': instance.menuOrder,
      'post_password': instance.postPassword,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'category_ids': instance.categoryIds,
      'shipping_class_id': instance.shippingClassId,
      'image_id': instance.imageId,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'average_rating': instance.averageRating,
      'review_count': instance.reviewCount,
      'categories': instance.categories,
    };

DateCreated _$DateCreatedFromJson(Map<String, dynamic> json) => DateCreated(
      date: json['date'] as String?,
      timezoneType: json['timezone_type'] as int?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$DateCreatedToJson(DateCreated instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezone_type': instance.timezoneType,
      'timezone': instance.timezone,
    };
