
import '../../data/models/course_dto.dart';

class Course {
  int? id;
  String? name;
  String? image;
  String? duration;
  String? department;
  String? description;
  String? teacher;
  bool? isFavorite;
  double? percentage;


  Course({this.id, this.name, this.image, this.duration, this.department,
    this.description, this.teacher, this.isFavorite,this.percentage});

  factory Course.fromDto(CourseDto json) => Course(
      id: json.id,
      name: json.name,
      image: json.image,
      duration: json.duration,
      department: json.department,
      description: json.description,
      teacher: json.teacher,
      isFavorite: json.isFavorite,
      percentage: json.percentage,
  );
}



