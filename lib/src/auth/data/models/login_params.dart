import 'package:app/src/auth/data/models/register_params.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class LoginParams {
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'fcm_token')
  String? fcmToken;

  LoginParams({this.phoneNumber, this.password, this.fcmToken});

   factory LoginParams.fromJson(Map<String, dynamic> json) => _$LoginParamsFromJson(json);

   Map<String, dynamic> toJson() => _$LoginParamsToJson(this);
}


