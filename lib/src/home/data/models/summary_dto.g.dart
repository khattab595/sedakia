// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryDto _$SummaryDtoFromJson(Map<String, dynamic> json) => SummaryDto(
      totalOrders: json['total_orders'] as int?,
      totalProducts: json['total_products'] as int?,
      totalSales: json['total_sales'] as int?,
      totalCustomers: json['total_customers'] as int?,
      averageOrderValue: json['average_order_value'] as String?,
      totalRefunds: json['total_refunds'] as int?,
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
