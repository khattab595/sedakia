// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_subscription_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseSubscriptionParams _$CourseSubscriptionParamsFromJson(
        Map<String, dynamic> json) =>
    CourseSubscriptionParams(
      courseId: json['course_id'] as int?,
      courseCode: json['courseCode'] as String?,
    );

Map<String, dynamic> _$CourseSubscriptionParamsToJson(
        CourseSubscriptionParams instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'courseCode': instance.courseCode,
    };
