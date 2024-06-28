// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyRequestDto _$MyRequestDtoFromJson(Map<String, dynamic> json) => MyRequestDto(
      id: json['id'] as int?,
      code: json['code'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      responseDate: json['response_date'] as String?,
      resignationDate: json['resignation_date'] as String?,
      createdAt: json['created_at'] as String?,
      advanceAmount: json['advance_amount'] as String?,
      status: json['status'] as String?,
      leaveType: json['leave_type'] as String?,
      vacationType: json['vacation_type'] as String?,
      description: json['description'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => ModelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyRequestDtoToJson(MyRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'response_date': instance.responseDate,
      'resignation_date': instance.resignationDate,
      'created_at': instance.createdAt,
      'advance_amount': instance.advanceAmount,
      'status': instance.status,
      'leave_type': instance.leaveType,
      'vacation_type': instance.vacationType,
      'description': instance.description,
      'files': instance.files,
    };
