// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record_prams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceRecordPrams _$AttendanceRecordPramsFromJson(
        Map<String, dynamic> json) =>
    AttendanceRecordPrams(
      page: json['page'] as int?,
      year: json['year'] as String?,
      month: json['month'] as String?,
    );

Map<String, dynamic> _$AttendanceRecordPramsToJson(
    AttendanceRecordPrams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('year', instance.year);
  writeNotNull('month', instance.month);
  return val;
}
