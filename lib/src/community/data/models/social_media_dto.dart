import 'package:json_annotation/json_annotation.dart'; 

part 'social_media_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class SocialMediaDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'icon')
  String? icon;
  @JsonKey(name: 'url')
  String? url;

  SocialMediaDto({this.id, this.name, this.icon, this.url});

   factory SocialMediaDto.fromJson(Map<String, dynamic> json) => _$SocialMediaDtoFromJson(json);

   Map<String, dynamic> toJson() => _$SocialMediaDtoToJson(this);
}

