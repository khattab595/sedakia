import 'package:json_annotation/json_annotation.dart'; 

part 'experiments_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ExperimentsDto {
  @JsonKey(name: 'experiment_name',includeIfNull: false)
  String? experimentName;
  @JsonKey(name: 'add_experiment',includeIfNull: false)
  String? addExperiment;
  @JsonKey(name: 'count',includeIfNull: false)
  String? count;

  ExperimentsDto({this.experimentName, this.addExperiment, this.count});

   factory ExperimentsDto.fromJson(Map<String, dynamic> json) => _$ExperimentsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ExperimentsDtoToJson(this);
}

