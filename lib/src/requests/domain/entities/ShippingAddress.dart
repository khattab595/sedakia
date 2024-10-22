import '../../data/models/order_dto.dart';

class ShippingAddressData {
  ShippingAddressData({
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

  factory ShippingAddressData.fromDto(ShippingAddress json) {
    return ShippingAddressData(
      firstName: json.firstName,
      lastName: json.lastName,
      address1: json.address_1,
      address2: json.address_2,
      city: json.city,
      state: json.state,
      postcode: json.postcode,
      country: json.country,
    );
  }
}
