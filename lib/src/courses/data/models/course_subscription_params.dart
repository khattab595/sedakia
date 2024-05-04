import 'package:json_annotation/json_annotation.dart'; 

part 'course_subscription_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CourseSubscriptionParams {
  @JsonKey(name: 'course_id')
  int? courseId;
  @JsonKey(name: 'courseCode')
  String? courseCode;

  CourseSubscriptionParams({this.courseId, this.courseCode});

   factory CourseSubscriptionParams.fromJson(Map<String, dynamic> json) => _$CourseSubscriptionParamsFromJson(json);

   Map<String, dynamic> toJson() => _$CourseSubscriptionParamsToJson(this);
}

