// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingDto _$SettingDtoFromJson(Map<String, dynamic> json) => SettingDto(
      id: json['id'] as String?,
      thisApp: json['this_app'] as String?,
      features: json['features'] as String?,
      services: json['services'] as String?,
      privacy: json['privacy'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$SettingDtoToJson(SettingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'this_app': instance.thisApp,
      'features': instance.features,
      'services': instance.services,
      'privacy': instance.privacy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
