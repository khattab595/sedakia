import 'package:json_annotation/json_annotation.dart'; 

part 'product_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class InvoiceDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'img')
  String? img;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'stock')
  int? stock;
  @JsonKey(name: 'commission')
  int? commission;
  @JsonKey(name: 'favorite')
  bool? favorite;

  InvoiceDto({this.id, this.name, this.img, this.price, this.stock, this.commission, this.favorite});

   factory InvoiceDto.fromJson(Map<String, dynamic> json) => _$InvoiceDtoFromJson(json);

   Map<String, dynamic> toJson() => _$InvoiceDtoToJson(this);
}

