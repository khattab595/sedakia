import 'package:json_annotation/json_annotation.dart'; 

part 'my_request_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class MyRequestParams {
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'page')
  String? page;

  MyRequestParams({this.status, this.page});

   factory MyRequestParams.fromJson(Map<String, dynamic> json) => _$MyRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$MyRequestParamsToJson(this);
}

