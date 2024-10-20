import '../../data/models/summary_dto.dart';

class SummaryModel {
  SummaryModel({
    this.totalOrders,
    this.totalProducts,
    this.totalSales,
    this.totalCustomers,
    this.averageOrderValue,
    this.totalRefunds,
  });

  int? totalOrders;
  int? totalProducts;
  int? totalSales;
  int? totalCustomers;
  String? averageOrderValue;
  int? totalRefunds;

  factory SummaryModel.fromDto(SummaryDto json) {
    return SummaryModel(
      totalOrders: json.totalOrders,
      totalProducts: json.totalProducts,
      totalSales: json.totalSales,
      totalCustomers: json.totalCustomers,
      averageOrderValue: json.averageOrderValue,
      totalRefunds: json.totalRefunds,
    );
  }
}
