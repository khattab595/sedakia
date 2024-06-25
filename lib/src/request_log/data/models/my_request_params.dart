import 'package:json_annotation/json_annotation.dart'; 

part 'my_request_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class MyRequestParams {
  @JsonKey(name: 'status')
  String? id;
  @JsonKey(name: 'page')
  String? name;

  MyRequestParams({this.id, this.name});

   factory MyRequestParams.fromJson(Map<String, dynamic> json) => _$MyRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$MyRequestParamsToJson(this);
}

