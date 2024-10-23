// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonthlyDto _$MonthlyDtoFromJson(Map<String, dynamic> json) => MonthlyDto(
      month: json['month'] as String?,
      totalOrders: (json['total_orders'] as num?)?.toDouble(),
      totalSales: (json['total_sales'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MonthlyDtoToJson(MonthlyDto instance) =>
    <String, dynamic>{
      'month': instance.month,
      'total_orders': instance.totalOrders,
      'total_sales': instance.totalSales,
    };
