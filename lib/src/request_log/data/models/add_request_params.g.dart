// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRequestParams _$AddRequestParamsFromJson(Map<String, dynamic> json) =>
    AddRequestParams(
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      resignationDate: json['resignation_date'] as String?,
      advanceAmount: json['advance_amount'] as String?,
      leaveType: json['leave_type'] as String?,
      vacationType: json['vacation_type'] as String?,
      description: json['description'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => const FileJsonConverter().fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$AddRequestParamsToJson(AddRequestParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start_date', instance.startDate);
  writeNotNull('end_date', instance.endDate);
  writeNotNull('resignation_date', instance.resignationDate);
  writeNotNull('advance_amount', instance.advanceAmount);
  writeNotNull('leave_type', instance.leaveType);
  writeNotNull('vacation_type', instance.vacationType);
  writeNotNull('description', instance.description);
  writeNotNull(
      'files', instance.files?.map(const FileJsonConverter().toJson).toList());
  return val;
}
