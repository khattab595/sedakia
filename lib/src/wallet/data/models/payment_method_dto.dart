import 'package:json_annotation/json_annotation.dart'; 

part 'payment_method_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class PaymentMethodDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'Name')
  String? Name;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'account_number')
  String? accountNumber;
  @JsonKey(name: 'provider')
  String? provider;
  @JsonKey(name: 'is_default')
  bool? isDefault;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'method')
  String? method;
  @JsonKey(name: 'activein')
  String? activein;

  PaymentMethodDto({this.id, this.Name, this.type, this.accountNumber, this.provider, this.isDefault, this.createdAt, this.method, this.activein});

   factory PaymentMethodDto.fromJson(Map<String, dynamic> json) => _$PaymentMethodDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PaymentMethodDtoToJson(this);
}

