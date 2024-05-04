// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attending_lesson_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendingLessonParams _$AttendingLessonParamsFromJson(
        Map<String, dynamic> json) =>
    AttendingLessonParams(
      subjectId: json['subject_id'] as int?,
      attendingMin: json['attending_min'] as int?,
    );

Map<String, dynamic> _$AttendingLessonParamsToJson(
        AttendingLessonParams instance) =>
    <String, dynamic>{
      'subject_id': instance.subjectId,
      'attending_min': instance.attendingMin,
    };
