// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperimentsDto _$ExperimentsDtoFromJson(Map<String, dynamic> json) =>
    ExperimentsDto(
      experimentName: json['experiment_name'] as String?,
       count: json['count'] as int?,
    );

Map<String, dynamic> _$ExperimentsDtoToJson(ExperimentsDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('experiment_name', instance.experimentName);
   writeNotNull('count', instance.count);
  return val;
}
