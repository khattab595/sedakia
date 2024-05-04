import 'package:json_annotation/json_annotation.dart';
part 'course_details_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class CourseDetailsDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'images')
  String? image;
  @JsonKey(name: 'duration')
  String? duration;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'department')
  String? department;
  @JsonKey(name: 'teacher')
  int? teacherId;
  @JsonKey(name: 'subjects')
  List<LessonDto>? subjects;

  CourseDetailsDto(
      {this.id,
      this.name,
      this.image,
      this.duration,
      this.description,
      this.department,
      this.teacherId,
      this.subjects});

  factory CourseDetailsDto.fromJson(Map<String, dynamic> json) => _$CourseDetailsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CourseDetailsDtoToJson(this);
}


@JsonSerializable(ignoreUnannotated: false)
class LessonDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'link')
  String? link;
  @JsonKey(name: 'm')
  double? m;
  @JsonKey(name: 's')
  double? s;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'drive_link')
  String? driveLink;
  @JsonKey(name: 'department')
  String? department;

  LessonDto(
      {this.id,
      this.name,
      this.link,
      this.m,
      this.s,
      this.description,
      this.status,
      this.driveLink,
      this.department});

  factory LessonDto.fromJson(Map<String, dynamic> json) => _$LessonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LessonDtoToJson(this);
}

