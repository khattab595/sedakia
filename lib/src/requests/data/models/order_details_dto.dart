import 'package:json_annotation/json_annotation.dart'; 

part 'order_details_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class OrderDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'date_created')
  String? dateCreated;
  @JsonKey(name: 'total')
  String? total;
  @JsonKey(name: 'subtotal')
  int? subtotal;
  @JsonKey(name: 'currency')
  String? currency;
  @JsonKey(name: 'billing')
  DataBilling? dataBilling;
  @JsonKey(name: 'shipping')
  ShippingModel? shippingModel;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'payment_method_title')
  String? paymentMethodTitle;
  @JsonKey(name: 'items')
  List<DataItem>? items;
  @JsonKey(name: 'meta_data')
  List<MetaDataModel>? metaData;

  OrderDetailsDto({this.id, this.status, this.dateCreated, this.total, this.subtotal, this.currency, this.dataBilling, this.shippingModel, this.paymentMethod, this.paymentMethodTitle, this.items, this.metaData});

   factory OrderDetailsDto.fromJson(Map<String, dynamic> json) => _$OrderDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$OrderDetailsDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class DataBilling {
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
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

  DataBilling({this.firstName, this.lastName, this.email, this.phone, this.address_1, this.address_2, this.city, this.state, this.postcode, this.country});

   factory DataBilling.fromJson(Map<String, dynamic> json) => _$DataBillingFromJson(json);

   Map<String, dynamic> toJson() => _$DataBillingToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ShippingModel {
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

  ShippingModel({this.firstName, this.lastName, this.address_1, this.address_2, this.city, this.state, this.postcode, this.country});

   factory ShippingModel.fromJson(Map<String, dynamic> json) => _$ShippingModelFromJson(json);

   Map<String, dynamic> toJson() => _$ShippingModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class DataItem {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'quantity')
  int? quantity;
  @JsonKey(name: 'total')
  String? total;
  @JsonKey(name: 'subtotal')
  String? subtotal;
  @JsonKey(name: 'sku')
  String? sku;
  @JsonKey(name: 'image_url')
  String? imageUrl;

  DataItem({this.id, this.productId, this.name, this.quantity, this.total, this.subtotal, this.sku, this.imageUrl});

   factory DataItem.fromJson(Map<String, dynamic> json) => _$DataItemFromJson(json);

   Map<String, dynamic> toJson() => _$DataItemToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class MetaDataModel {
  @JsonKey(name: 'key')
  String? key;
  @JsonKey(name: 'value')
  String? value;

  MetaDataModel({this.key, this.value});

   factory MetaDataModel.fromJson(Map<String, dynamic> json) => _$MetaDataModelFromJson(json);

   Map<String, dynamic> toJson() => _$MetaDataModelToJson(this);
}

