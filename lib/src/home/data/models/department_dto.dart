import 'package:json_annotation/json_annotation.dart';


part 'department_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class DepartmentDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'academic_level_id')
  int? academicLevelId;
  @JsonKey(name: 'stage_level_id')
  int? stageLevelId;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  DepartmentDto(
      {this.id,
      this.name,
      this.academicLevelId,
      this.stageLevelId,
      this.icon,
      this.createdAt,
      this.updatedAt});

  factory DepartmentDto.fromJson(Map<String, dynamic> json) => _$DepartmentDtoFromJson(json);

   Map<String, dynamic> toJson() => _$DepartmentDtoToJson(this);
}



