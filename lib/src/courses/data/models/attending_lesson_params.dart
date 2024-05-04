import 'package:json_annotation/json_annotation.dart'; 

part 'attending_lesson_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AttendingLessonParams {
  @JsonKey(name: 'subject_id')
  int? subjectId;
  @JsonKey(name: 'attending_min')
  int? attendingMin;

  AttendingLessonParams({this.subjectId, this.attendingMin});

   factory AttendingLessonParams.fromJson(Map<String, dynamic> json) => _$AttendingLessonParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AttendingLessonParamsToJson(this);
}

