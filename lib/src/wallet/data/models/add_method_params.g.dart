// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_method_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMethodParams _$AddMethodParamsFromJson(Map<String, dynamic> json) =>
    AddMethodParams(
      method: json['method'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddMethodParamsToJson(AddMethodParams instance) =>
    <String, dynamic>{
      'method': instance.method,
      'fields': instance.fields,
    };

FieldValue _$FieldValueFromJson(Map<String, dynamic> json) => FieldValue(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FieldValueToJson(FieldValue instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
