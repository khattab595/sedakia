import 'package:json_annotation/json_annotation.dart'; 

part 'edit_profile_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class EditProfileParams {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;

  EditProfileParams({this.name, this.email, this.phone});

   factory EditProfileParams.fromJson(Map<String, dynamic> json) => _$EditProfileParamsFromJson(json);

   Map<String, dynamic> toJson() => _$EditProfileParamsToJson(this);
}

