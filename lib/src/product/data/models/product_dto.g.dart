// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: (json['id'] as num?)?.toDouble(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      dateCreated: json['date_created'] == null
          ? null
          : DateCreated.fromJson(json['date_created'] as Map<String, dynamic>),
      dateModified: json['date_modified'] == null
          ? null
          : DateModified.fromJson(
              json['date_modified'] as Map<String, dynamic>),
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
      totalSales: (json['total_sales'] as num?)?.toDouble(),
      taxStatus: json['tax_status'] as String?,
      taxClass: json['tax_class'] as String?,
      manageStock: json['manage_stock'] as bool?,
      stockStatus: json['stock_status'] as String?,
      backorders: json['backorders'] as String?,
      lowStockAmount: json['low_stock_amount'] as String?,
      soldIndividually: json['sold_individually'] as bool?,
      weight: json['weight'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
      parentId: (json['parent_id'] as num?)?.toDouble(),
      reviewsAllowed: json['reviews_allowed'] as bool?,
      purchaseNote: json['purchase_note'] as String?,
      menuOrder: (json['menu_order'] as num?)?.toDouble(),
      postPassword: json['post_password'] as String?,
      virtual: json['virtual'] as bool?,
      downloadable: json['downloadable'] as bool?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      shippingClassId: (json['shipping_class_id'] as num?)?.toDouble(),
      imageId: json['image_id'] as String?,
      galleryImageIds: (json['gallery_image_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      downloadLimit: (json['download_limit'] as num?)?.toDouble(),
      downloadExpiry: (json['download_expiry'] as num?)?.toDouble(),
      averageRating: json['average_rating'] as String?,
      reviewCount: (json['review_count'] as num?)?.toDouble(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'date_created': instance.dateCreated,
      'date_modified': instance.dateModified,
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
      'total_sales': instance.totalSales,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
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
      'gallery_image_ids': instance.galleryImageIds,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'average_rating': instance.averageRating,
      'review_count': instance.reviewCount,
      'categories': instance.categories,
    };

DateCreated _$DateCreatedFromJson(Map<String, dynamic> json) => DateCreated(
      date: json['date'] as String?,
      timezoneType: (json['timezone_type'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$DateCreatedToJson(DateCreated instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezone_type': instance.timezoneType,
      'timezone': instance.timezone,
    };

DateModified _$DateModifiedFromJson(Map<String, dynamic> json) => DateModified(
      date: json['date'] as String?,
      timezoneType: (json['timezone_type'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$DateModifiedToJson(DateModified instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezone_type': instance.timezoneType,
      'timezone': instance.timezone,
    };
