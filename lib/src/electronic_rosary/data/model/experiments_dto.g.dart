// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperimentsDto _$ExperimentsDtoFromJson(Map<String, dynamic> json) =>
    ExperimentsDto(
      experimentName: json['experiment_name'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExperimentsDtoToJson(ExperimentsDto instance) =>
    <String, dynamic>{
      'experiment_name': instance.experimentName,
      'count': instance.count,
    };
