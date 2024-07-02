import 'package:json_annotation/json_annotation.dart'; 

part 'change_password_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ChangePasswordParams {
  @JsonKey(name: 'new_password')
  String? newPassword;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'new_password_confirmation')
  String? newPasswordConfirmation;
  @JsonKey(name: 'otp')
  String? otp;

  ChangePasswordParams({this.newPassword,this.otp, this.newPasswordConfirmation, this.phone});

   factory ChangePasswordParams.fromJson(Map<String, dynamic> json) => _$ChangePasswordParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ChangePasswordParamsToJson(this);
}

