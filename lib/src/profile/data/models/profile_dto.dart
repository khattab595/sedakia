import 'package:json_annotation/json_annotation.dart'; 

part 'profile_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ProfileDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'token')
  String? token;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'parent_phone')
  String? parentPhone;
  @JsonKey(name: 'special_code')
  String? specialCode;
  @JsonKey(name: 'pic_identityF')
  String? picIdentityF;
  @JsonKey(name: 'pic_identityB')
  String? picIdentityB;
  @JsonKey(name: 'gender')
  String? gender;
  @JsonKey(name: 'birth_date')
  String? birthDate;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'academicLevel')
  String? academicLevel;
  @JsonKey(name: 'academicLevel_id')
  int? academicLevelId;
  @JsonKey(name: 'stageLevel')
  String? stageLevel;
  @JsonKey(name: 'stageLevel_id')
  int? stageLevelId;

  ProfileDto({this.id, this.name, this.token, this.phoneNumber, this.parentPhone, this.specialCode, this.picIdentityF, this.picIdentityB, this.gender, this.birthDate, this.image, this.academicLevel, this.academicLevelId, this.stageLevel, this.stageLevelId});

   factory ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}

