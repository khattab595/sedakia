// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperimentsDto _$ExperimentsDtoFromJson(Map<String, dynamic> json) =>
    ExperimentsDto(
      experimentName: json['experiment_name'] as String?,
      addExperiment: json['add_experiment'] as String?,
      count: json['count'] as String?,
    );

Map<String, dynamic> _$ExperimentsDtoToJson(ExperimentsDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('experiment_name', instance.experimentName);
  writeNotNull('add_experiment', instance.addExperiment);
  writeNotNull('count', instance.count);
  return val;
}
