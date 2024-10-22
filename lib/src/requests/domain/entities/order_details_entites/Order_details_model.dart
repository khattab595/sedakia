import '../../../data/models/order_details_dto.dart';
import 'Billing.dart';
import 'Shipping.dart';
import 'Items.dart';
import 'MetaData.dart';

class OrderDetailsModel {
  OrderDetailsModel({
      this.id, 
      this.status, 
      this.dateCreated, 
      this.total, 
      this.subtotal, 
      this.currency, 
      this.billing,
      this.shippingData,
      this.paymentMethod, 
      this.paymentMethodTitle, 
      this.items, 
      this.metaData,});

  int? id;
  String? status;
  String? dateCreated;
  String? total;
  int? subtotal;
  String? currency;
  Billing? billing;
  ShippingData? shippingData;
  String? paymentMethod;
  String? paymentMethodTitle;
  List<ItemsData>? items;
  List<MetaData>? metaData;

  factory OrderDetailsModel.fromDto(OrderDetailsDto json) {
    return OrderDetailsModel(
    id: json.id,
      status: json.status,
      dateCreated: json.dateCreated,
      total: json.total,
      subtotal: json.subtotal,
      currency: json.currency,
      paymentMethod: json.paymentMethod,
      paymentMethodTitle: json.paymentMethodTitle,
    items: json.items?.map((e) => ItemsData.fromDto(e)).toList(),
    // billing:  Billing.fromDto(json.billing),
    //  shippingData: ShippingData.fromDto(json.shippingData),
      metaData: json.metaData?.map((e) => MetaData.fromDto(e)).toList(),
    );
  }

}