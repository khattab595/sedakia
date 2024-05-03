// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => ProfileDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      token: json['token'] as String?,
      phoneNumber: json['phone_number'] as String?,
      parentPhone: json['parent_phone'] as String?,
      specialCode: json['special_code'] as String?,
      picIdentityF: json['pic_identityF'] as String?,
      picIdentityB: json['pic_identityB'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birth_date'] as String?,
      image: json['image'] as String?,
      academicLevel: json['academicLevel'] as String?,
      academicLevelId: json['academicLevel_id'] as int?,
      stageLevel: json['stageLevel'] as String?,
      stageLevelId: json['stageLevel_id'] as int?,
    );

Map<String, dynamic> _$ProfileDtoToJson(ProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'parent_phone': instance.parentPhone,
      'special_code': instance.specialCode,
      'pic_identityF': instance.picIdentityF,
      'pic_identityB': instance.picIdentityB,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'image': instance.image,
      'academicLevel': instance.academicLevel,
      'academicLevel_id': instance.academicLevelId,
      'stageLevel': instance.stageLevel,
      'stageLevel_id': instance.stageLevelId,
    };
