import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'add_request_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class AddRequestParams {
  @JsonKey(name: 'start_date', includeIfNull: false)
  String? startDate;
  @JsonKey(name: 'end_date', includeIfNull: false)
  String? endDate;
  @JsonKey(name: 'resignation_date', includeIfNull: false)
  String? resignationDate;
  @JsonKey(name: 'advance_amount', includeIfNull: false)
  String? advanceAmount;
  @JsonKey(name: 'leave_type', includeIfNull: false)
  String? leaveType;
  @JsonKey(name: 'vacation_type', includeIfNull: false)
  String? vacationType;
  @JsonKey(name: 'description', includeIfNull: false)
  String? description;
  @JsonKey(name: 'files', includeIfNull: false)
  @FileJsonConverter()
  List<File>? files;

  AddRequestParams({
    this.startDate,
    this.endDate,
    this.resignationDate,
    this.advanceAmount,
    this.leaveType,
    this.vacationType,
    this.description,
    this.files,
  });

  factory AddRequestParams.fromJson(Map<String, dynamic> json) =>
      _$AddRequestParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AddRequestParamsToJson(this);
}

class FileJsonConverter implements JsonConverter<File, String> {
  const FileJsonConverter();

  @override
  File fromJson(String json) {
    return File(json);
  }

  @override
  String toJson(File object) {
    return object.path;
  }
}
