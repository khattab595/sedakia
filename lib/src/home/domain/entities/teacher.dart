
import '../../data/models/teacher_dto.dart';

class Teacher {
  int? id;
  String? name;
  String? image;
  String? department;

  Teacher({this.id, this.name, this.image, this.department});

   factory Teacher.fromDto(TeacherDto json) => Teacher(
       id: json.id,
       name: json.name,
       image: json.image,
       department: json.department,
   );
}

