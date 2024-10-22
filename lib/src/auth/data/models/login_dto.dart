import 'package:json_annotation/json_annotation.dart';

part 'login_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class LoginDto {
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'user_obj')
  UserObj? userObj;

  LoginDto({this.token, this.userObj});

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class UserObj {
  @JsonKey(name: 'data')
  Data? data;

  UserObj({this.data});

  factory UserObj.fromJson(Map<String, dynamic> json) =>
      _$UserObjFromJson(json);

  Map<String, dynamic> toJson() => _$UserObjToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Data {
  @JsonKey(name: 'ID')
  String? ID;
  @JsonKey(name: 'user_login')
  String? userLogin;
  @JsonKey(name: 'user_pass')
  String? userPass;
  @JsonKey(name: 'user_nicename')
  String? userNicename;
  @JsonKey(name: 'user_email')
  String? userEmail;
  @JsonKey(name: 'user_url')
  String? userUrl;
  @JsonKey(name: 'user_registered')
  String? userRegistered;
  @JsonKey(name: 'user_activation_key')
  String? userActivationKey;
  @JsonKey(name: 'user_status')
  String? userStatus;
  @JsonKey(name: 'display_name')
  String? displayName;
  @JsonKey(name: 'spam')
  String? spam;
  @JsonKey(name: 'deleted')
  String? deleted;

  Data(
      {this.ID,
      this.userLogin,
      this.userPass,
      this.userNicename,
      this.userEmail,
      this.userUrl,
      this.userRegistered,
      this.userActivationKey,
      this.userStatus,
      this.displayName,
      this.spam,
      this.deleted});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Caps {
  @JsonKey(name: 'subscriber')
  bool? subscriber;

  Caps({this.subscriber});

  factory Caps.fromJson(Map<String, dynamic> json) => _$CapsFromJson(json);

  Map<String, dynamic> toJson() => _$CapsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Allcaps {
  @JsonKey(name: 'read')
  bool? read;
  @JsonKey(name: 'level_0')
  bool? level_0;
  @JsonKey(name: 'subscriber')
  bool? subscriber;

  Allcaps({this.read, this.level_0, this.subscriber});

  factory Allcaps.fromJson(Map<String, dynamic> json) =>
      _$AllcapsFromJson(json);

  Map<String, dynamic> toJson() => _$AllcapsToJson(this);
}
