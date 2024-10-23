import 'package:json_annotation/json_annotation.dart'; 

part 'monthly_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class MonthlyDto {
  @JsonKey(name: 'month')
  String? month;
  @JsonKey(name: 'total_orders')
  double? totalOrders;
  @JsonKey(name: 'total_sales')
  double? totalSales;

  MonthlyDto({this.month, this.totalOrders, this.totalSales});

   factory MonthlyDto.fromJson(Map<String, dynamic> json) => _$MonthlyDtoFromJson(json);

   Map<String, dynamic> toJson() => _$MonthlyDtoToJson(this);
}

