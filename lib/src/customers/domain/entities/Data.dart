import 'package:app/src/customers/data/models/customer_dto.dart';

class CustomerData {
  CustomerData({
    this.id,
    this.userLogin,
    this.email,
    this.phone,
  });

  String? id;
  String? userLogin;
  String? email;
  String? phone;

  factory CustomerData.fromDto(Data json) {
    return CustomerData(
        id: json.id, userLogin: json.userLogin, email: json.email,phone: json.phone);
  }
}
