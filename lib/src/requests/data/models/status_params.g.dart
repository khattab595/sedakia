// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusParams _$StatusParamsFromJson(Map<String, dynamic> json) => StatusParams(
      newStatus: json['new_status'] as String?,
    );

Map<String, dynamic> _$StatusParamsToJson(StatusParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('new_status', instance.newStatus);
  return val;
}
