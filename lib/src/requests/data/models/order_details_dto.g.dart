// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsDto _$OrderDetailsDtoFromJson(Map<String, dynamic> json) =>
    OrderDetailsDto(
      id: json['id'] as int?,
      status: json['status'] as String?,
      dateCreated: json['date_created'] as String?,
      total: json['total'] as String?,
      subtotal: json['subtotal'] as int?,
      currency: json['currency'] as String?,
      billing: json['billing'] == null
          ? null
          : Billing.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTitle: json['payment_method_title'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsDtoToJson(OrderDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'date_created': instance.dateCreated,
      'total': instance.total,
      'subtotal': instance.subtotal,
      'currency': instance.currency,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'payment_method': instance.paymentMethod,
      'payment_method_title': instance.paymentMethodTitle,
      'items': instance.items,
      'meta_data': instance.metaData,
    };

Billing _$BillingFromJson(Map<String, dynamic> json) => Billing(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address_1: json['address_1'] as String?,
      address_2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$BillingToJson(Billing instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };

Shipping _$ShippingFromJson(Map<String, dynamic> json) => Shipping(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      address_1: json['address_1'] as String?,
      address_2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$ShippingToJson(Shipping instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
      total: json['total'] as String?,
      subtotal: json['subtotal'] as String?,
      sku: json['sku'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'name': instance.name,
      'quantity': instance.quantity,
      'total': instance.total,
      'subtotal': instance.subtotal,
      'sku': instance.sku,
    };

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
