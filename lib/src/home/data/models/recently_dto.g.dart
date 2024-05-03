// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentlyDto _$RecentlyDtoFromJson(Map<String, dynamic> json) => RecentlyDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['images'] as String?,
      duration: json['duration'] as String?,
      department: json['department'] as String?,
      description: json['description'] as String?,
      teacher: json['teacher'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RecentlyDtoToJson(RecentlyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.image,
      'duration': instance.duration,
      'department': instance.department,
      'description': instance.description,
      'teacher': instance.teacher,
      'is_favorite': instance.isFavorite,
      'percentage': instance.percentage,
    };
