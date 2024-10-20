import 'package:app/src/requests/data/models/order_dto.dart';

class OrderData {
  OrderData({
    this.id,
    this.customerName,
    this.status,
    this.total,
    this.dateCreated,
  });

  int? id;
  String? customerName;
  String? status;
  String? total;
  String? dateCreated;

  factory OrderData.fromDto(Data json) {
    return OrderData(
      id: json.id,
      customerName: json.customerName,
      status: json.status,
      total: json.total,
      dateCreated: json.dateCreated,
    );
  }
}
