// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDetailsDto _$CourseDetailsDtoFromJson(Map<String, dynamic> json) =>
    CourseDetailsDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['images'] as String?,
      duration: json['duration'] as String?,
      description: json['description'] as String?,
      department: json['department'] as String?,
      teacherId: json['teacher'] as int?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFree: json['is_free'] as int?,
    );

Map<String, dynamic> _$CourseDetailsDtoToJson(CourseDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.image,
      'duration': instance.duration,
      'description': instance.description,
      'department': instance.department,
      'teacher': instance.teacherId,
      'subjects': instance.subjects,
      'is_free': instance.isFree,
    };

LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) => LessonDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      link: json['link'] as String?,
      m: (json['m'] as num?)?.toDouble(),
      s: (json['s'] as num?)?.toDouble(),
      description: json['description'] as String?,
      status: json['status'] as String?,
      driveLink: json['drive_link'] as String?,
      department: json['department'] as String?,
    );

Map<String, dynamic> _$LessonDtoToJson(LessonDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
      'm': instance.m,
      's': instance.s,
      'description': instance.description,
      'status': instance.status,
      'drive_link': instance.driveLink,
      'department': instance.department,
    };
