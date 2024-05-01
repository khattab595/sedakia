import 'package:json_annotation/json_annotation.dart';

part 'my_courses_dto.g.dart';
@JsonSerializable(ignoreUnannotated: false)
class MyCoursesDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
 @JsonKey(name: 'images')
  String? image;
 @JsonKey(name: 'duration')
  String? duration;
 @JsonKey(name: 'department')
  String? department;
 @JsonKey(name: 'description')
  String? description;
 @JsonKey(name: 'teacher')
  String? teacher;
 @JsonKey(name: 'is_favorite')
  bool? isFavorite;
 @JsonKey(name: 'percentage')
  double? percentage;


  MyCoursesDto({this.id, this.name, this.image, this.duration, this.department,
    this.description, this.teacher, this.isFavorite,this.percentage});

  factory MyCoursesDto.fromJson(Map<String, dynamic> json) => _$MyCoursesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MyCoursesDtoToJson(this);
}



