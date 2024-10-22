import 'package:app/src/customers/data/models/customer_dto.dart';

class CustomerData {
  CustomerData({
    this.id,
    this.userLogin,
    this.email,
  });

  String? id;
  String? userLogin;
  String? email;

  factory CustomerData.fromDto(Data json) {
    return CustomerData(
        id: json.id, userLogin: json.userLogin, email: json.email);
  }
}
