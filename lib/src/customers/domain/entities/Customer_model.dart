import '../../data/models/customer_dto.dart';
import 'Data.dart';

class CustomerModel {
  CustomerModel({
    this.data,
    this.totalUsers,
    this.totalPages,
    this.currentPage,
  });

  List<CustomerData>? data;
  int? totalUsers;
  int? totalPages;
  int? currentPage;

  factory CustomerModel.fromDto(CustomerDto json) {
    return CustomerModel(
      totalUsers: json.totalUsers,
      totalPages: json.totalPages,
      currentPage: json.currentPage,
      data: json.data?.map((e) => CustomerData.fromDto(e)).toList(),
    );
  }
}
