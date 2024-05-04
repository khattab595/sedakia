
import 'package:app/core/utils/helper_methods.dart';
import 'package:app/src/courses/data/models/course_details_dto.dart';
import 'package:app/src/main_index.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/utils/navigator.dart';

class CourseDetails {
  int? id;
  String? name;
  String? image;
  String? duration;
  String? description;
  String? department;
  int? teacherId;
  List<Lesson>? subjects;

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
      subjects: Lesson.fromDtoList(json.subjects)
    );
  }
}



class Lesson {

  int? id;
  String? name;
  String? link;
  double? m;
  double? s;
  String? description;
  String? status;
  String? driveLink;
  String? department;

  Lesson(
      {this.id,
      this.name,
      this.link,
      this.m,
      this.s,
      this.description,
      this.status,
      this.driveLink,
      this.department});

  factory Lesson.fromDto(LessonDto json) => Lesson(
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

  static List<Lesson>? fromDtoList(List<LessonDto>? subjectsDtoList) {
    if (subjectsDtoList == null) return null;
    return subjectsDtoList.map((subjectsDto) => Lesson.fromDto(subjectsDto)).toList();
  }

  Duration get duration => Duration(minutes: m!.toInt(), seconds: s!.toInt());

  navigate() {
    if(status == 'free') {
      pushNamed(Routes.lessonDetailsPage, arguments: this);
    } else {
      HelperMethods.showErrorToast('يجب الاشتراك لمشاهدة الدرس');
    }
  }
}

