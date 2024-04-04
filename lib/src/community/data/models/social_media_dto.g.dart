// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaDto _$SocialMediaDtoFromJson(Map<String, dynamic> json) =>
    SocialMediaDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$SocialMediaDtoToJson(SocialMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'url': instance.url,
    };
