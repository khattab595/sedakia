import '../../../data/models/order_details_dto.dart';

class ItemsData {
  ItemsData({
    this.id,
    this.productId,
    this.name,
    this.quantity,
    this.total,
    this.subtotal,
    this.sku,
    this.imageUrl,
  });

  int? id;
  int? productId;
  String? name;
  int? quantity;
  String? total;
  String? subtotal;
  String? sku;
  String? imageUrl;

  factory ItemsData.fromDto(DataItem json) {
    return ItemsData(
      id: json.id,
      productId: json.productId,
      name: json.name,
      quantity: json.quantity,
      total: json.total,
      subtotal: json.subtotal,
      sku: json.sku,
      imageUrl: json.imageUrl,
    );
  }
}
