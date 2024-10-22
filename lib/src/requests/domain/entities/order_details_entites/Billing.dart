import 'package:app/src/requests/data/models/order_details_dto.dart';

class Billing {
  Billing({
      this.firstName, 
      this.lastName, 
      this.email, 
      this.phone, 
      this.address1, 
      this.address2, 
      this.city, 
      this.state, 
      this.postcode, 
      this.country,});

  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;

  factory Billing.fromDto(DataBilling json) {
    return Billing(
      firstName: json.firstName,
      lastName: json.lastName,
      email: json.email,
      phone: json.phone,
      address1: json.address_1,
      address2: json.address_2,
      city: json.city,
      state: json.state,
      postcode: json.postcode,
      country: json.country,

    );
  }

}