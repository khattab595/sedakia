
import 'package:intl/intl.dart';

import '../../data/models/notification_dto.dart';

class Notifications{
  final int? id;
  final String? title;
  final String? time;
  final String? description;

  Notifications({ this.id,   this.title,  this.time,  this.description});

  factory Notifications.fromJson(NotificationDto json) {
    // DateTime originalDate = DateTime.parse(json.time!);
    // String formatDate(DateTime date) {
    //   DateFormat formatter = DateFormat('dd MMMM yyyy');
    //   return formatter.format(date);
    // }
    // final String date =formatDate(originalDate);

    return Notifications(
        id: json.id,
        title: json.title,
        time: json.time,
        description: json.description,
    );

  }




}