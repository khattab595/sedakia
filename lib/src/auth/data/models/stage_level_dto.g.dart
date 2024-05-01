// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage_level_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StageLevelDto _$StageLevelDtoFromJson(Map<String, dynamic> json) =>
    StageLevelDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      academicLevelId: json['academic_level_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$StageLevelDtoToJson(StageLevelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'academic_level_id': instance.academicLevelId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
