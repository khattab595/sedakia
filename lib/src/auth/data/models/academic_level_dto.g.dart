// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_level_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicLevelDto _$AcademicLevelDtoFromJson(Map<String, dynamic> json) =>
    AcademicLevelDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$AcademicLevelDtoToJson(AcademicLevelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
