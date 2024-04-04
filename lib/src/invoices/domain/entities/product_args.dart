

class ProductArgs {
  int productId;
  int? orderId;
  bool isFromOrders;

  ProductArgs({required this.productId, this.isFromOrders = false, this.orderId});
}

