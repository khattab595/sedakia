import 'package:app/src/requests/data/models/order_dto.dart';
import 'package:app/src/requests/domain/entities/ShippingAddress.dart';

class OrderData {
  OrderData({
      this.id, 
      this.customerName, 
      this.status, 
      this.total, 
      this.dateCreated, 
      this.phone, 
      this.shippingAddress,});

  int? id;
  String? customerName;
  String? status;
  String? total;
  String? dateCreated;
  String? phone;
  ShippingAddress? shippingAddress;

  factory OrderData.fromDto(DataOrder json) {
    return OrderData(
      id: json.id,
      customerName: json.customerName,
      status: json.status,
      total: json.total,
      dateCreated: json.dateCreated,
      phone: json.phone,
     // shippingAddress: json.shippingAddress,
    );
  }

}

class ShippingAddress {
  ShippingAddress({
    this.firstName,
    this.lastName,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  String? firstName;
  String? lastName;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;

  factory ShippingAddress.fromDto(ShippingAddress json) {
    return ShippingAddress(
      firstName: json.firstName,
      lastName: json.lastName,
      address1: json.address1,
      address2: json.address2,
      city: json.city,
      state: json.state,
      postcode: json.postcode,
      country: json.country,
    );
  }
}