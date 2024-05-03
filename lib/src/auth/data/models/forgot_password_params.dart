import 'package:json_annotation/json_annotation.dart'; 

part 'forgot_password_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ForgotPasswordParams {
  @JsonKey(name: 'phone_number')
  String? phoneNumber;

  ForgotPasswordParams({this.phoneNumber});

   factory ForgotPasswordParams.fromJson(Map<String, dynamic> json) => _$ForgotPasswordParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ForgotPasswordParamsToJson(this);
}

