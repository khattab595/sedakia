import '../../data/models/monthly_dto.dart';

class MonthlyModel {
  MonthlyModel({
    this.month,
    this.totalOrders,
    this.totalSales,
  });

  String? month;
  double? totalOrders;
  double? totalSales;

  factory MonthlyModel.fromDto(MonthlyDto json) {
    return MonthlyModel(
      month: json.month,
      totalOrders: json.totalOrders,
      totalSales: json.totalSales,
    );
  }
}
