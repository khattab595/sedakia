import 'package:json_annotation/json_annotation.dart'; 

part 'order_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OrderDto {
  @JsonKey(name: 'data')
  List<Data>? data;
  @JsonKey(name: 'total_orders')
  int? totalOrders;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'current_page')
  int? currentPage;

  OrderDto({this.data, this.totalOrders, this.totalPages, this.currentPage});

   factory OrderDto.fromJson(Map<String, dynamic> json) => _$OrderDtoFromJson(json);

   Map<String, dynamic> toJson() => _$OrderDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'customer_name')
  String? customerName;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'total')
  String? total;
  @JsonKey(name: 'date_created')
  String? dateCreated;

  Data({this.id, this.customerName, this.status, this.total, this.dateCreated});

   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

   Map<String, dynamic> toJson() => _$DataToJson(this);
}

