
import 'package:app/src/courses/data/models/course_details_dto.dart';

class CourseDetails {
  int? id;
  String? name;
  String? image;
  String? duration;
  String? description;
  String? department;
  int? teacherId;
  List<Subjects>? subjects;

  CourseDetails(
      {this.id,
      this.name,
      this.image,
      this.duration,
      this.description,
      this.department,
      this.teacherId,
      this.subjects});

  factory CourseDetails.fromDto(CourseDetailsDto json) {
    return CourseDetails(
      id: json.id,
      name: json.name,
      image: json.image,
      duration: json.duration,
      description: json.description,
      department: json.department,
      teacherId: json.teacherId,
      subjects: Subjects.fromDtoList(json.subjects)
    );
  }
}



class Subjects {

  int? id;
  String? name;
  String? link;
  double? m;
  double? s;
  String? description;
  String? status;
  String? driveLink;
  String? department;

  Subjects(
      {this.id,
      this.name,
      this.link,
      this.m,
      this.s,
      this.description,
      this.status,
      this.driveLink,
      this.department});

  factory Subjects.fromDto(SubjectsDto json) => Subjects(
    id: json.id,
    name: json.name,
    link: json.link,
    m: json.m,
    s: json.s,
    description: json.description,
    status: json.status,
    driveLink: json.driveLink,
    department: json.department,
  );

  static List<Subjects>? fromDtoList(List<SubjectsDto>? subjectsDtoList) {
    if (subjectsDtoList == null) return null;
    return subjectsDtoList.map((subjectsDto) => Subjects.fromDto(subjectsDto)).toList();
  }
}

