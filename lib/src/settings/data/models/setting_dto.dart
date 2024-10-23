import 'package:json_annotation/json_annotation.dart'; 

part 'setting_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class SettingDto {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'this_app')
  String? thisApp;
  @JsonKey(name: 'features')
  String? features;
  @JsonKey(name: 'services')
  String? services;
  @JsonKey(name: 'privacy')
  String? privacy;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  SettingDto({this.id, this.thisApp, this.features, this.services, this.privacy, this.createdAt, this.updatedAt});

   factory SettingDto.fromJson(Map<String, dynamic> json) => _$SettingDtoFromJson(json);

   Map<String, dynamic> toJson() => _$SettingDtoToJson(this);
}

