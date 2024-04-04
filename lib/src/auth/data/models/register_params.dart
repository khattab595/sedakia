import 'package:json_annotation/json_annotation.dart'; 

part 'register_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class RegisterParams {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'country')
  String? country;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'password_confirmation')
  String? passwordConfirmation;
  @JsonKey(name: 'platform')
  PlatformDto? platform;

  RegisterParams({this.name, this.email, this.country, this.phone, this.password, this.passwordConfirmation, this.platform});

   factory RegisterParams.fromJson(Map<String, dynamic> json) => _$RegisterParamsFromJson(json);

   Map<String, dynamic> toJson() => _$RegisterParamsToJson(this);
}

@JsonSerializable(ignoreUnannotated: true)
class PlatformDto {
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'os')
  String? os;
  @JsonKey(name: 'ver')
  String? ver;
  @JsonKey(name: 'id')
  String? id;

  PlatformDto({this.type, this.name, this.os, this.ver, this.id});

   factory PlatformDto.fromJson(Map<String, dynamic> json) => _$PlatformDtoFromJson(json);

   Map<String, dynamic> toJson() => _$PlatformDtoToJson(this);
}

