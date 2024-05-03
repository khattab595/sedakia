// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlideDto _$SlideDtoFromJson(Map<String, dynamic> json) => SlideDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      images: json['images'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SlideDtoToJson(SlideDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'images': instance.images,
      'description': instance.description,
    };
