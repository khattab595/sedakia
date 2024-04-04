// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_method_fields_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodFieldsDto _$PaymentMethodFieldsDtoFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodFieldsDto(
      name: json['name'] as String?,
      key: json['key'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentMethodFieldsDtoToJson(
        PaymentMethodFieldsDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'fields': instance.fields,
    };

FieldDto _$FieldDtoFromJson(Map<String, dynamic> json) => FieldDto(
      name: json['name'] as String?,
      key: json['key'] as String?,
      type: json['type'] as String?,
      regex: json['regex'] as String?,
      required: json['required'] as bool?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => FieldValueDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FieldDtoToJson(FieldDto instance) => <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'type': instance.type,
      'regex': instance.regex,
      'required': instance.required,
      'values': instance.values,
    };

FieldValueDto _$FieldValueDtoFromJson(Map<String, dynamic> json) =>
    FieldValueDto(
      name: json['name'],
      value: json['value'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$FieldValueDtoToJson(FieldValueDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'key': instance.key,
    };
