import 'package:json_annotation/json_annotation.dart';
part 'grade_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class GradeDto {
  @JsonKey(name: 'name')
  String? name;
 @JsonKey(name: 'grade')
  int? grade;
 @JsonKey(name: 'image')
  String? image;
 @JsonKey(name: 'teacher_name')
  String? teacherName;
 @JsonKey(name: 'course_name')
  String? courseName;


  GradeDto({this.name, this.grade, this.image, this.teacherName, this.courseName});

  factory GradeDto.fromJson(Map<String, dynamic> json) => _$GradeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GradeDtoToJson(this);
}





