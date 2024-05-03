import '../../data/models/grade_dto.dart';

class Grade {
  String? name;
  int? grade;
  String? image;
  String? teacherName;
  String? courseName;


  Grade({this.name, this.grade, this.image, this.teacherName, this.courseName});

  factory Grade.fromDto(GradeDto json){
    return Grade(
      name: json.name,
      grade: json.grade,
      image: json.image,
      teacherName: json.teacherName,
      courseName: json.courseName,
    );
  }

}





