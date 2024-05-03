
import '../../../my_courses/data/models/course_dto.dart';
import '../../../my_courses/domain/entities/course.dart';
import '../../data/models/teacher_details_dto.dart';


class TeacherDetails {
  int? id;
  String? name;
  String? image;
  String? department;
  String? description;
  List<Course>? courses;


  TeacherDetails(
      {this.id, this.name, this.image, this.department, this.description,this.courses});

  factory TeacherDetails.fromDto(TeacherDetailsDto json){
    List<Course>? courseList;
    if (json.courses != null) {
      courseList = json.courses!.map((courseDto) {
        return Course(
          id: courseDto.id,
          name: courseDto.name,
          image: courseDto.image,
          description: courseDto.description,
          duration: courseDto.duration,
          department: courseDto.department,
          teacher: courseDto.teacher,
          isFavorite: courseDto.isFavorite,
          percentage: courseDto.percentage,
        );
      }).toList();
    }
    return  TeacherDetails(
    id: json.id,
    name: json.name,
    image: json.image,
    department: json.department,
    description: json.description,
    courses: courseList
  );
  }

}



