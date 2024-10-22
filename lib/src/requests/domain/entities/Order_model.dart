import '../../data/models/order_dto.dart';
import 'Data.dart';

class OrderModel {
  OrderModel({
      this.data, 
      this.totalOrders, 
      this.totalPages, 
      this.currentPage,});

  List<OrderData>? data;
  int? totalOrders;
  int? totalPages;
  int? currentPage;

  factory OrderModel.fromDto(OrderDto json) {
    return OrderModel(
      totalOrders: json.totalOrders,
      totalPages: json.totalPages,
      currentPage: json.currentPage,
      data: json.data?.map((e) => OrderData.fromDto(e)).toList(),
    );
  }

}