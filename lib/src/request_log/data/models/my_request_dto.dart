import 'package:json_annotation/json_annotation.dart'; 

part 'my_request_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class MyRequestDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'code')
  String? code;
  @JsonKey(name: 'start_date')
  String? startDate;
  @JsonKey(name: 'end_date')
  String? endDate;
  @JsonKey(name: 'response_date')
  String? responseDate;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'leave_type')
  String? leaveType;
  @JsonKey(name: 'vacation_type')
  String? vacationType;
  @JsonKey(name: 'description')
  String? description;

  MyRequestDto({this.id, this.code, this.startDate, this.endDate, this.responseDate, this.status, this.leaveType, this.vacationType, this.description});

   factory MyRequestDto.fromJson(Map<String, dynamic> json) => _$MyRequestDtoFromJson(json);

   Map<String, dynamic> toJson() => _$MyRequestDtoToJson(this);
}

