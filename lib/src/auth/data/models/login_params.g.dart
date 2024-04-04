// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParams _$LoginParamsFromJson(Map<String, dynamic> json) => LoginParams(
      email: json['email'] as String?,
      password: json['password'] as String?,
      platform: json['platform'] == null
          ? null
          : PlatformDto.fromJson(json['platform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginParamsToJson(LoginParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'platform': instance.platform,
    };
