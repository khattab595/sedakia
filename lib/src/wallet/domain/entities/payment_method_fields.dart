import 'package:json_annotation/json_annotation.dart';

import '../../data/models/wallet_method_fields_dto.dart';

@JsonSerializable()
class PaymentMethodFields {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "fields")
  final List<FieldDto>? fields;

  PaymentMethodFields({
    this.name,
    this.key,
    this.fields,
  });

  factory PaymentMethodFields.fromDto(PaymentMethodFieldsDto json) {
    return PaymentMethodFields(
      name: json.name,
      key: json.key,
      fields: json.fields,
    );
  }
}
