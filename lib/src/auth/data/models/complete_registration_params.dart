import 'package:json_annotation/json_annotation.dart'; 

part 'complete_registration_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CompleteRegistrationParams {
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'birth_date')
  String? birthDate;
  @JsonKey(name: 'academic_level_id')
  String? academicLevelId;
  @JsonKey(name: 'stage_level_id')
  String? stageLevelId;

  CompleteRegistrationParams({this.gender, this.birthDate, this.academicLevelId, this.stageLevelId});

   factory CompleteRegistrationParams.fromJson(Map<String, dynamic> json) => _$CompleteRegistrationParamsFromJson(json);

   Map<String, dynamic> toJson() => _$CompleteRegistrationParamsToJson(this);
}

