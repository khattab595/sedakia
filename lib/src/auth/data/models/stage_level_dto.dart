import 'package:json_annotation/json_annotation.dart'; 

part 'stage_level_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class StageLevelDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'academic_level_id')
  int? academicLevelId;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  StageLevelDto({this.id, this.name, this.academicLevelId, this.createdAt, this.updatedAt});

   factory StageLevelDto.fromJson(Map<String, dynamic> json) => _$StageLevelDtoFromJson(json);

   Map<String, dynamic> toJson() => _$StageLevelDtoToJson(this);
}

