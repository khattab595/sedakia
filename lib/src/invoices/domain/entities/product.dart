
import '../../data/models/product_dto.dart';

class Product {
  int? id;
  String? name;
  String? img;
  int? price;
  int? stock;
  int? commission;
  bool? favorite;

  Product({this.id, this.name, this.img, this.price, this.stock, this.commission, this.favorite});

   factory Product.fromDto(ProductDto json) {
     return Product(
       id: json.id,
       name: json.name,
       img: json.img,
       price: json.price,
       stock: json.stock,
       commission: json.commission,
       favorite: json.favorite,
     );
   }
}

