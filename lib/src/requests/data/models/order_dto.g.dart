// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => OrderDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
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

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      customerName: json['customer_name'] as String?,
      status: json['status'] as String?,
      total: json['total'] as String?,
      dateCreated: json['date_created'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'status': instance.status,
      'total': instance.total,
      'date_created': instance.dateCreated,
    };
