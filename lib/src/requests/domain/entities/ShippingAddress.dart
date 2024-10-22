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
