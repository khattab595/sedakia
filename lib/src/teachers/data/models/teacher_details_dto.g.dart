// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherDetailsDto _$TeacherDetailsDtoFromJson(Map<String, dynamic> json) =>
    TeacherDetailsDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      department: json['department'] as String?,
      description: json['description'] as String?,
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => CourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeacherDetailsDtoToJson(TeacherDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'department': instance.department,
      'description': instance.description,
      'courses': instance.courses,
    };
