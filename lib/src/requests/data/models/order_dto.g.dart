// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => OrderDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalOrders: json['total_orders'] as int?,
      totalPages: json['total_pages'] as int?,
      currentPage: json['current_page'] as int?,
    );

Map<String, dynamic> _$OrderDtoToJson(OrderDto instance) => <String, dynamic>{
      'data': instance.data,
      'total_orders': instance.totalOrders,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
    };

DataOrder _$DataOrderFromJson(Map<String, dynamic> json) => DataOrder(
      id: json['id'] as int?,
      customerName: json['customer_name'] as String?,
      status: json['status'] as String?,
      total: json['total'] as String?,
      dateCreated: json['date_created'] as String?,
      phone: json['phone'] as String?,
      shippingAddress: ShippingAddress.fromJson(
          json['shipping_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataOrderToJson(DataOrder instance) => <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'status': instance.status,
      'total': instance.total,
      'date_created': instance.dateCreated,
      'phone': instance.phone,
      'shipping_address': instance.shippingAddress,
    };

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) =>
    ShippingAddress(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      address_1: json['address_1'] as String?,
      address_2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };
