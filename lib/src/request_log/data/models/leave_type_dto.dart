import 'package:json_annotation/json_annotation.dart'; 

part 'leave_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class LeaveTypeDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  LeaveTypeDto({this.id, this.name});

   factory LeaveTypeDto.fromJson(Map<String, dynamic> json) => _$LeaveTypeDtoFromJson(json);

   Map<String, dynamic> toJson() => _$LeaveTypeDtoToJson(this);
}

