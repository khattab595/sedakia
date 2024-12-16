import 'package:json_annotation/json_annotation.dart';

part 'register_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class RegisterParams {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'password_confirmation')
  String? passwordConfirmation;
  @JsonKey(name: 'parent_phone')
  String? parentPhone;
  @JsonKey(name: 'phone_number')
  String? phone;
  @JsonKey(name: 'fcm_token')
  String? fcmToken;

  RegisterParams(
      {this.name,
      this.parentPhone,
      this.phone,
      this.password,
      this.passwordConfirmation,
      this.fcmToken});

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterParamsToJson(this);
}
