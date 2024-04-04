import 'package:json_annotation/json_annotation.dart'; 

part 'create_request_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class CreateRequestParams {
  @JsonKey(name: 'Amount')
  int? Amount;
  @JsonKey(name: 'Method')
  int? Method;
  @JsonKey(name: 'country')
  int? country;

  CreateRequestParams({this.Amount, this.Method, this.country});

   factory CreateRequestParams.fromJson(Map<String, dynamic> json) => _$CreateRequestParamsFromJson(json);

   Map<String, dynamic> toJson() => _$CreateRequestParamsToJson(this);
}

