import 'package:json_annotation/json_annotation.dart'; 

part 'attendance_record_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AttendanceRecordDto {
  @JsonKey(name: 'movement_name')
  String? movementName;
  @JsonKey(name: 'created_at')
  String? createdAt;

  AttendanceRecordDto({this.movementName, this.createdAt});

   factory AttendanceRecordDto.fromJson(Map<String, dynamic> json) => _$AttendanceRecordDtoFromJson(json);

   Map<String, dynamic> toJson() => _$AttendanceRecordDtoToJson(this);
}

