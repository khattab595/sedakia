//
// import 'package:intl/intl.dart';
//
// import '../../data/models/my_courses_dto.dart';
//
//
// class MyCourses{
//   final int? id;
//   final String? title;
//   final String? time;
//   final String? description;
//
//   MyCourses({ this.id,   this.title,  this.time,  this.description});
//
//   factory MyCourses.fromJson(MyCoursesDto json) {
//     // DateTime originalDate = DateTime.parse(json.time!);
//     // String formatDate(DateTime date) {
//     //   DateFormat formatter = DateFormat('dd MMMM yyyy');
//     //   return formatter.format(date);
//     // }
//     // final String date =formatDate(originalDate);
//
//     return MyCourses(
//         id: json.id,
//         title: json.title,
//         time: json.time,
//         description: json.description,
//     );
//
//   }
//
//
//
//
// }