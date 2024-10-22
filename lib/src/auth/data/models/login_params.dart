import 'package:json_annotation/json_annotation.dart';

part 'login_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class LoginParams {
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'password')
  String? password;


  LoginParams({this.username, this.password});

   factory LoginParams.fromJson(Map<String, dynamic> json) => _$LoginParamsFromJson(json);

   Map<String, dynamic> toJson() => _$LoginParamsToJson(this);
}


