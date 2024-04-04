import 'package:json_annotation/json_annotation.dart';

part 'wallet_method_fields_dto.g.dart';

@JsonSerializable()
class PaymentMethodFieldsDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "fields")
  final List<FieldDto>? fields;

  PaymentMethodFieldsDto ({
    this.name,
    this.key,
    this.fields,
  });

  factory PaymentMethodFieldsDto.fromJson(Map<String, dynamic> json) {
    return _$PaymentMethodFieldsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PaymentMethodFieldsDtoToJson(this);
  }
}

@JsonSerializable()
class FieldDto {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "regex")
  final String? regex;
  @JsonKey(name: "required")
  final bool? required;
  @JsonKey(name: "values")
  final List<FieldValueDto>? values;

  FieldDto ({
    this.name,
    this.key,
    this.type,
    this.regex,
    this.required,
    this.values,
  });

  factory FieldDto.fromJson(Map<String, dynamic> json) {
    return _$FieldDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FieldDtoToJson(this);
  }
}


@JsonSerializable()
class FieldValueDto {
  @JsonKey(name: "name")
   var name;
  @JsonKey(name: "value")
  final String? value;
  @JsonKey(name: "key")
  final String? key;

  FieldValueDto ({
    this.name,
    this.value,
    this.key,
  });

  factory FieldValueDto.fromJson(Map<String, dynamic> json) {
    return _$FieldValueDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FieldValueDtoToJson(this);
  }
}