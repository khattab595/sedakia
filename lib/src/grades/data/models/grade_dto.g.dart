// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GradeDto _$GradeDtoFromJson(Map<String, dynamic> json) => GradeDto(
      name: json['name'] as String?,
      grade: json['grade'] as int?,
      image: json['image'] as String?,
      teacherName: json['teacher_name'] as String?,
      courseName: json['course_name'] as String?,
    );

Map<String, dynamic> _$GradeDtoToJson(GradeDto instance) => <String, dynamic>{
      'name': instance.name,
      'grade': instance.grade,
      'image': instance.image,
      'teacher_name': instance.teacherName,
      'course_name': instance.courseName,
    };
