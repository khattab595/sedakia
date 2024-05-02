import 'package:json_annotation/json_annotation.dart';
part 'teacher_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class TeacherDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'department')
  String? department;


  TeacherDto({this.id, this.name, this.image, this.department});

  factory TeacherDto.fromJson(Map<String, dynamic> json) => _$TeacherDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TeacherDtoToJson(this);
}



