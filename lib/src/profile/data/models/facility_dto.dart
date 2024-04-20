import 'package:json_annotation/json_annotation.dart'; 

part 'facility_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class FacilityDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'num')
  String? num;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'address')
  String? address;

  FacilityDto({this.id, this.num, this.name, this.address});

   factory FacilityDto.fromJson(Map<String, dynamic> json) => _$FacilityDtoFromJson(json);

   Map<String, dynamic> toJson() => _$FacilityDtoToJson(this);
}