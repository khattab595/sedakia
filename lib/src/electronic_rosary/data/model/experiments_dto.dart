import 'package:json_annotation/json_annotation.dart'; 

part 'experiments_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ExperimentsDto {
  @JsonKey(name: 'experiment_name', )
  String? experimentName;
  @JsonKey(name: 'count', )
  int? count;

  ExperimentsDto({this.experimentName,  this.count});

   factory ExperimentsDto.fromJson(Map<String, dynamic> json) => _$ExperimentsDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ExperimentsDtoToJson(this);
}

