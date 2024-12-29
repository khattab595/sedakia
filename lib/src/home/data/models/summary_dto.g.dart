// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryDto _$SummaryDtoFromJson(Map<String, dynamic> json) => SummaryDto(
      totalOrders: (json['total_orders'] as num?)?.toInt(),
      totalProducts: (json['total_products'] as num?)?.toInt(),
      totalSales: (json['total_sales'] as num?)?.toInt(),
      totalCustomers: (json['total_customers'] as num?)?.toInt(),
      averageOrderValue: json['average_order_value'] as String?,
      totalRefunds: (json['total_refunds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SummaryDtoToJson(SummaryDto instance) =>
    <String, dynamic>{
      'total_orders': instance.totalOrders,
      'total_products': instance.totalProducts,
      'total_sales': instance.totalSales,
      'total_customers': instance.totalCustomers,
      'average_order_value': instance.averageOrderValue,
      'total_refunds': instance.totalRefunds,
    };
