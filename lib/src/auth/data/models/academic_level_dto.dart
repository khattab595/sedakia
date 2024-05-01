import 'package:json_annotation/json_annotation.dart'; 

part 'academic_level_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AcademicLevelDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  AcademicLevelDto({this.id, this.name, this.createdAt, this.updatedAt});

   factory AcademicLevelDto.fromJson(Map<String, dynamic> json) => _$AcademicLevelDtoFromJson(json);

   Map<String, dynamic> toJson() => _$AcademicLevelDtoToJson(this);
}

