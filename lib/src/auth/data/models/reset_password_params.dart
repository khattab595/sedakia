import 'package:json_annotation/json_annotation.dart'; 

part 'reset_password_params.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ResetPasswordParams {
  @JsonKey(name: 'new_password')
  String? newPassword;
  @JsonKey(name: 'new_password_confirmation')
  String? newPasswordConfirmation;

  ResetPasswordParams({this.newPassword, this.newPasswordConfirmation});

   factory ResetPasswordParams.fromJson(Map<String, dynamic> json) => _$ResetPasswordParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ResetPasswordParamsToJson(this);
}

