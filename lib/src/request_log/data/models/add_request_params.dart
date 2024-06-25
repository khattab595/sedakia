import 'package:json_annotation/json_annotation.dart'; 

part 'leave_type_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class AddRequestParams {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  AddRequestParams({this.id, this.name});

   factory AddRequestParams.fromJson(Map<String, dynamic> json) => _$AddRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$AddRequestParamsToJson(this);
}

