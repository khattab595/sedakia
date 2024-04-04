import 'package:json_annotation/json_annotation.dart'; 

part 'country_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class CountryDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'currency')
  String? currency;
  @JsonKey(name: 'lang')
  String? lang;
  @JsonKey(name: 'code')
  String? code;

  CountryDto({this.id, this.name, this.currency, this.lang, this.code});

   factory CountryDto.fromJson(Map<String, dynamic> json) => _$CountryDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CountryDtoToJson(this);
}

