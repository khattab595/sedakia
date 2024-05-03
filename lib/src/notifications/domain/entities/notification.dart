
import 'package:intl/intl.dart';
import '../../data/models/notification_dto.dart';

class Notifications{
  final int? id;
  final String? title;
  final String? date;
  final String? time;
  final String? description;

  Notifications({this.id, this.title, this.date, this.time,  this.description});

  factory Notifications.fromDto(NotificationDto json) {
    DateTime originalDate = DateTime.parse(json.time!);
    String formatDate(DateTime date) {
      DateFormat formatter = DateFormat('dd MMMM yyyy');
      return formatter.format(date);
    }
    String formatTime(DateTime dateTime) {
      String period = dateTime.hour >= 12 ? 'pm' : 'am'; // Determine AM or PM
      int hour = dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour; // Convert to 12-hour format
      if (hour == 0) hour = 12; // Handle midnight (0 hour)
      String minute = dateTime.minute.toString().padLeft(2, '0'); // Ensure two digits for minutes
      return '$hour:$minute$period'; // Combine hour, minute, and period
    }
    final String date =formatDate(originalDate);
    final String time =formatTime(originalDate);

    return Notifications(
        id: json.id,
        title: json.title,
        date: date,
        time: time,
        description: json.description,
    );

  }




}