// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodDto _$PaymentMethodDtoFromJson(Map<String, dynamic> json) =>
    PaymentMethodDto(
      id: json['id'] as int?,
      Name: json['Name'] as String?,
      type: json['type'] as String?,
      accountNumber: json['account_number'] as String?,
      provider: json['provider'] as String?,
      isDefault: json['is_default'] as bool?,
      createdAt: json['created_at'] as String?,
      method: json['method'] as String?,
      activein: json['activein'] as String?,
    );

Map<String, dynamic> _$PaymentMethodDtoToJson(PaymentMethodDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Name': instance.Name,
      'type': instance.type,
      'account_number': instance.accountNumber,
      'provider': instance.provider,
      'is_default': instance.isDefault,
      'created_at': instance.createdAt,
      'method': instance.method,
      'activein': instance.activein,
    };
