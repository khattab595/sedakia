import 'package:json_annotation/json_annotation.dart';

import '../../../home/data/models/home_data_dto.dart';

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
  @JsonKey(name: 'resignation_date')
  String? resignationDate;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'advance_amount')
  String? advanceAmount;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'leave_type')
  String? leaveType;
  @JsonKey(name: 'vacation_type')
  String? vacationType;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'files')
  List<ModelDto>? files;

  MyRequestDto({
    this.id,
    this.code,
    this.startDate,
    this.endDate,
    this.responseDate,
    this.resignationDate,
    this.createdAt,
    this.advanceAmount,
    this.status,
    this.leaveType,
    this.vacationType,
    this.description,
    this.files,
  });

   factory MyRequestDto.fromJson(Map<String, dynamic> json) => _$MyRequestDtoFromJson(json);

   Map<String, dynamic> toJson() => _$MyRequestDtoToJson(this);
}

