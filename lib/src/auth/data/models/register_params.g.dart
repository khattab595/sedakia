// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) =>
    RegisterParams(
      name: json['name'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      passwordConfirmation: json['password_confirmation'] as String?,
      platform: json['platform'] == null
          ? null
          : PlatformDto.fromJson(json['platform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterParamsToJson(RegisterParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'country': instance.country,
      'phone': instance.phone,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'platform': instance.platform,
    };

PlatformDto _$PlatformDtoFromJson(Map<String, dynamic> json) => PlatformDto(
      type: json['type'] as String?,
      name: json['name'] as String?,
      os: json['os'] as String?,
      ver: json['ver'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$PlatformDtoToJson(PlatformDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'os': instance.os,
      'ver': instance.ver,
      'id': instance.id,
    };
