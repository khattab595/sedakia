import 'package:json_annotation/json_annotation.dart';

part 'attendance_record_prams.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AttendanceRecordPrams {
  @JsonKey(name: 'page', includeIfNull: false)
  int? page;
  @JsonKey(name: 'year', includeIfNull: false)
  String? year;
  @JsonKey(name: 'month', includeIfNull: false)
  String? month;

  AttendanceRecordPrams({this.page, this.year, this.month});

  factory AttendanceRecordPrams.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordPramsFromJson(json);

  Map<String, dynamic> toJson() => _$AttendanceRecordPramsToJson(this);
}
