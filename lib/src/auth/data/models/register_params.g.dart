// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) =>
    RegisterParams(
      name: json['name'] as String?,
      parentPhone: json['parent_phone'] as String?,
      phone: json['phone_number'] as String?,
      password: json['password'] as String?,
      passwordConfirmation: json['password_confirmation'] as String?,
      fcmToken: json['fcm_token'] as String?,
    );

Map<String, dynamic> _$RegisterParamsToJson(RegisterParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'parent_phone': instance.parentPhone,
      'phone_number': instance.phone,
      'fcm_token': instance.fcmToken,
    };
