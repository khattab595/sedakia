import '../../data/models/profile_dto.dart';

class Profile {
  int? id;
  String? name;
  String? phoneNumber;
  String? parentPhone;
  String? specialCode;
  String? picIdentityF;
  String? picIdentityB;
  String? gender;
  String? birthDate;
  String? image;
  String? academicLevel;
  int? academicLevelId;
  String? stageLevel;
  int? stageLevelId;

  Profile(
      {this.id,
      this.name,
      this.phoneNumber,
      this.parentPhone,
      this.specialCode,
      this.picIdentityF,
      this.picIdentityB,
      this.gender,
      this.birthDate,
      this.image,
      this.academicLevel,
      this.academicLevelId,
      this.stageLevel,
      this.stageLevelId});

  factory Profile.fromDto(ProfileDto json) => Profile(
        id: json.id,
        name: json.name,
        phoneNumber: json.phoneNumber,
        parentPhone: json.parentPhone,
        specialCode: json.specialCode,
        picIdentityF: json.picIdentityF,
        picIdentityB: json.picIdentityB,
        stageLevelId: json.stageLevelId,
        birthDate: json.birthDate,
        gender: json.academicLevel,
        academicLevel: json.academicLevel,
        academicLevelId: json.academicLevelId,
        stageLevel: json.stageLevel,
        image: json.image,
  );
}
