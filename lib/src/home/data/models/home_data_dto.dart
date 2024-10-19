import 'package:json_annotation/json_annotation.dart'; 

part 'home_data_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ModelDto {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'url')
  String? value;

  ModelDto(  {this.name, this.value});

   factory ModelDto.fromJson(Map<String, dynamic> json) => _$ModelDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ModelDtoToJson(this);
}

