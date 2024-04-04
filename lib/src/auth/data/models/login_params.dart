import 'package:app/src/auth/data/models/register_params.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class LoginParams {
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'platform')
  PlatformDto? platform;

  LoginParams({this.email, this.password, this.platform});

   factory LoginParams.fromJson(Map<String, dynamic> json) => _$LoginParamsFromJson(json);

   Map<String, dynamic> toJson() => _$LoginParamsToJson(this);
}


