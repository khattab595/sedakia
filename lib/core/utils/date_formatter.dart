import 'package:app/core/di/injector.dart';
import 'package:intl/intl.dart';

class DateFormatter {
  static String DATE_FORMAT = 'dd-MM-yyyy';
  static String DATE_FORMAT_MOUNTH = 'MMMM yyyy';
  static String DATE_FORMAT_MOUNTH_DAY = 'EEEE, d MMM, yyyy';
  static const MONTH_NAME_YEAR = 'MMM yyyy ';
  static const TIME_STAMP="yyyy-MM-dd'T'HH:mm:ss" ;
  static const DAY_MONTH_YEAR ='dd/MM/yyyy' ;
  static const MONTH_DAY_YEAR ='MM/dd/yyyy' ;
  static const HOUR_MINUT_SEC ='HH:mm:ss' ;
  static const HOUR_MINUT ='HH:mm' ;
  static const HOUR_MINUT_12 =' hh:mm a' ;
  static const DATE_TIME ='dd/MM/yyyy HH:mm:ss' ;
  static const DATE_TIME_API ='MM/dd/yyyy HH:mm:ss' ;
  static const DATE_TIME_UI ='EEE ,d MMM  yyyy , hh:mm a' ;
  static const WORKING_DATE_TIME_UI ='dd-MM-yyyy HH:mm a' ;
  static const DATE_UI ='EEE ,d MMM  yyyy ' ;

  static const TIME_UI ='hh:mm' ;
  static const DATE_Api_DD_MM_YYYY ='dd-MM-yyyy' ;
  static const DATE_D_MMM_YYYY ='d MMM yyyy';
  static String formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);
    if (diff.inDays > 0) {
      return '${date.day}/${date.month}/${date.year}';
    } else if (diff.inHours > 0) {
      return '${date.hour}:${date.minute}';
    } else {
      return '${date.hour}:${date.minute}';
    }
  }

  static String monthNameYear(DateTime date) {
    return formatDateV2(date, 'MMM yyyy ');
  }

  static String formatToTime(String date) {
    DateTime dateTime = DateFormat('yyyy-MM-ddThh:mm:ss').parse(date);
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String formatDateV2(
    DateTime dateTime,
    String pattern,
  ) {
    try {
      return DateFormat(pattern).format(dateTime);
    } catch (e) {
      return '';
    }
  }

  static String formatChatDate(String dateChat) {
    try {
      final date = DateTime.parse(dateChat);
      final now = DateTime.now();
      final diff = now.difference(DateTime.parse(date.toString()));
      if (diff.inDays > 0) {
        return '${date.day}/${date.month}/${date.year}';
      } else if (diff.inHours > 0) {
        final formattedTime = DateFormat.jm().format(date);
        return formattedTime;
      } else {
        final formattedTime = DateFormat.jm().format(date);
        return formattedTime;
      }
    } on Exception catch (e) {
      return '';
    }
  }

// convert from date string 20-8-2024 to 20 oct 2024
  static String formatOrderStatusDateString(String dateString) {
    try {
      final DateFormat _inputFormat = DateFormat('dd-MM-yyyy');
      final DateFormat _outputFormat = DateFormat('dd\nMMM');
      DateTime date = _inputFormat.parse(dateString);
      String formattedDate = _outputFormat.format(date);
      return formattedDate;
    } on Exception {
      return '';
    }
  }

  static String formatString(String dateString,
      {String format = 'MMM d, yyyy'}) {
    final lang = injector<ServicesLocator>().languageCode;
    try {
      print('formatTimestampString dateString: $dateString');
      final DateFormat _inputFormat = DateFormat('yy-MM-dd');
      final DateFormat _outputFormat = DateFormat(format, lang);
      DateTime date = _inputFormat.parse(dateString);
      String formattedDate = _outputFormat.format(date);
      return formattedDate;
    } on Exception catch (e) {
      print('formatTimestampString error: $e');
      return dateString;
    }
  }

  static String formatTimestampString(String dateString,
      {String format = TIME_STAMP}) {
    // final lang = injector<ServicesLocator>().languageCode;
    try {
      print('formatTimestampString dateString: $dateString');
      final DateFormat _inputFormat = DateFormat('yy-MM-dd');
      final DateFormat _outputFormat = DateFormat(format);
      DateTime date = _inputFormat.parse(dateString);
      String formattedDate = _outputFormat.format(date);
      return formattedDate;
    } on Exception catch (e) {
      print('formatTimestampString error: $e');
      return dateString;
    }
  }

  static int getMonthIndex(String date){
    try {
      final DateFormat _inputFormat = DateFormat('yyyy-MM');
      DateTime dateTime = _inputFormat.parse(date);
      print('getMonthIndex error: ${dateTime.month}');
      return dateTime.month;
    } catch (e) {
      print('getMonthIndex error: $e');
      return 0;
    }
  }

  static List<String> getAllMonthsTransactions() {
    List<String> months = [];
    for (int i = 1; i <= 12; i++) {
      months.add(DateFormat('MMMM').format(DateTime(2021, i)));
    }
    return months;
  }
}
