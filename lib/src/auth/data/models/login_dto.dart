import 'package:json_annotation/json_annotation.dart'; 

part 'login_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class LoginDto {
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'site_url')
  String? siteUrl;
  @JsonKey(name: 'site_id')
  String? siteId;

  LoginDto({this.status, this.message, this.userId, this.siteUrl, this.siteId});

   factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);

   Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}

