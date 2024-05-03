import 'package:json_annotation/json_annotation.dart'; 

part 'slide_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class SlideDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'images')
  String? images;
  @JsonKey(name: 'description')
  String? description;

  SlideDto({this.id, this.title, this.images, this.description});

   factory SlideDto.fromJson(Map<String, dynamic> json) => _$SlideDtoFromJson(json);

   Map<String, dynamic> toJson() => _$SlideDtoToJson(this);
}

