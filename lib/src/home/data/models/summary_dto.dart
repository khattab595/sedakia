import 'package:json_annotation/json_annotation.dart';

part 'summary_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SummaryDto {
  @JsonKey(name: 'total_orders')
  int? totalOrders;
  @JsonKey(name: 'total_products')
  int? totalProducts;
  @JsonKey(name: 'total_sales')
  int? totalSales;
  @JsonKey(name: 'total_customers')
  int? totalCustomers;
  @JsonKey(name: 'average_order_value')
  String? averageOrderValue;
  @JsonKey(name: 'total_refunds')
  int? totalRefunds;

  SummaryDto(
      {this.totalOrders,
      this.totalProducts,
      this.totalSales,
      this.totalCustomers,
      this.averageOrderValue,
      this.totalRefunds});

  factory SummaryDto.fromJson(Map<String, dynamic> json) =>
      _$SummaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryDtoToJson(this);
}
