import 'package:json_annotation/json_annotation.dart'; 

part 'order_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OrderDto {
  @JsonKey(name: 'data')
  List<DataOrder>? data;
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
class DataOrder {
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
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'shipping_address')
  ShippingAddress shippingAddress;

  DataOrder({this.id, this.customerName, this.status, this.total, this.dateCreated, this.phone,required this.shippingAddress});

   factory DataOrder.fromJson(Map<String, dynamic> json) => _$DataOrderFromJson(json);

   Map<String, dynamic> toJson() => _$DataOrderToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ShippingAddress {
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'address_1')
  String? address_1;
  @JsonKey(name: 'address_2')
  String? address_2;
  @JsonKey(name: 'city')
  String? city;
  @JsonKey(name: 'state')
  String? state;
  @JsonKey(name: 'postcode')
  String? postcode;
  @JsonKey(name: 'country')
  String? country;

  ShippingAddress({this.firstName, this.lastName, this.address_1, this.address_2, this.city, this.state, this.postcode, this.country});

   factory ShippingAddress.fromJson(Map<String, dynamic> json) => _$ShippingAddressFromJson(json);

   Map<String, dynamic> toJson() => _$ShippingAddressToJson(this);
}

