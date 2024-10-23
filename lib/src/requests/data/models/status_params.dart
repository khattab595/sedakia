import 'package:json_annotation/json_annotation.dart'; 

part 'status_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class StatusParams {
  @JsonKey(name: 'new_status',includeIfNull: false)
  String? newStatus;

  StatusParams({this.newStatus});

   factory StatusParams.fromJson(Map<String, dynamic> json) => _$StatusParamsFromJson(json);

   Map<String, dynamic> toJson() => _$StatusParamsToJson(this);
}

