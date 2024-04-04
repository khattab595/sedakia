import 'package:json_annotation/json_annotation.dart'; 

part 'change_password_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ChangePasswordParams {
  @JsonKey(name: 'oldPassword')
  int? oldPassword;
  @JsonKey(name: 'newPassword')
  int? newPassword;
  @JsonKey(name: 'newPassword_confirmation')
  int? newPasswordConfirmation;

  ChangePasswordParams({this.oldPassword, this.newPassword, this.newPasswordConfirmation});

   factory ChangePasswordParams.fromJson(Map<String, dynamic> json) => _$ChangePasswordParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ChangePasswordParamsToJson(this);
}

