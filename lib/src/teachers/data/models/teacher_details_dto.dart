import 'package:json_annotation/json_annotation.dart';

import '../../../my_courses/data/models/course_dto.dart';


part 'teacher_details_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class TeacherDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'department')
  String? department;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'courses')
  List<CourseDto>? courses;

  TeacherDetailsDto(
      {this.id, this.name, this.image, this.department, this.description,this.courses});

  factory TeacherDetailsDto.fromJson(Map<String, dynamic> json) => _$TeacherDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TeacherDetailsDtoToJson(this);
}



