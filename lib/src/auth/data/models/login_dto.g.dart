// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      status: json['status'] as String?,
      message: json['message'] as String?,
      userId: json['user_id'] as int?,
      siteUrl: json['site_url'] as String?,
      siteId: json['site_id'] as String?,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user_id': instance.userId,
      'site_url': instance.siteUrl,
      'site_id': instance.siteId,
    };
