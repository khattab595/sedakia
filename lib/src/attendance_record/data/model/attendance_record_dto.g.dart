// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceRecordDto _$AttendanceRecordDtoFromJson(Map<String, dynamic> json) =>
    AttendanceRecordDto(
      movementName: json['movement_name'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$AttendanceRecordDtoToJson(
        AttendanceRecordDto instance) =>
    <String, dynamic>{
      'movement_name': instance.movementName,
      'created_at': instance.createdAt,
    };
