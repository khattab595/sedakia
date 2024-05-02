// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) =>
    DepartmentDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      academicLevelId: json['academic_level_id'] as int?,
      stageLevelId: json['stage_level_id'] as int?,
      icon: json['icon'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DepartmentDtoToJson(DepartmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'academic_level_id': instance.academicLevelId,
      'stage_level_id': instance.stageLevelId,
      'icon': instance.icon,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
