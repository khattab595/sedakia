import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'edit_profile_params.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class EditProfileParams {
  @JsonKey(name: 'image', includeIfNull: false)
  @FileJsonConverter()
  File? image;
  @JsonKey(name: 'email', includeIfNull: false)
  String? email;
  @JsonKey(name: 'phone', includeIfNull: false)
  String? phone;

  EditProfileParams({this.image, this.email, this.phone});

   factory EditProfileParams.fromJson(Map<String, dynamic> json) => _$EditProfileParamsFromJson(json);

   Map<String, dynamic> toJson() => _$EditProfileParamsToJson(this);
}

class FileJsonConverter extends JsonConverter<File, String> {
  const FileJsonConverter();

  @override
  File fromJson(String json) {
    return File(json);
  }

  @override
  String toJson(File object) {
    return object.path;
  }
}