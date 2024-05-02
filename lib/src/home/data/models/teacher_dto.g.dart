// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherDto _$TeacherDtoFromJson(Map<String, dynamic> json) => TeacherDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      department: json['department'] as String?,
    );

Map<String, dynamic> _$TeacherDtoToJson(TeacherDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'department': instance.department,
    };
