import 'package:json_annotation/json_annotation.dart';

import 'city_dto.dart';
import 'facility_dto.dart';

part 'profile_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProfileDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'num')
  String? num;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'facility')
  FacilityDto? facility;
  @JsonKey(name: 'city')
  CityDto? city;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'token')
  String? token;

  ProfileDto({this.id, this.num, this.name, this.email, this.phone, this.address, this.facility, this.city, this.image, this.token});

   factory ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}

