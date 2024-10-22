import 'package:app/src/requests/data/models/order_dto.dart';
import 'package:app/src/requests/domain/entities/ShippingAddress.dart';

class OrderData {
  OrderData({
      this.id, 
      this.customerName, 
      this.status, 
      this.total, 
      this.dateCreated, 
      this.phone, 
      this.shippingAddress,});

  int? id;
  String? customerName;
  String? status;
  String? total;
  String? dateCreated;
  String? phone;
  ShippingAddressData ?shippingAddress;

  factory OrderData.fromDto(DataOrder json) {
    return OrderData(
      id: json.id,
      customerName: json.customerName,
      status: json.status,
      total: json.total,
      dateCreated: json.dateCreated,
      phone: json.phone,
      shippingAddress: ShippingAddressData.fromDto(json.shippingAddress),
    );
  }

}

