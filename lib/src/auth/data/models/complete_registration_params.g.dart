// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_registration_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteRegistrationParams _$CompleteRegistrationParamsFromJson(
        Map<String, dynamic> json) =>
    CompleteRegistrationParams(
      gender: json['gender'] as String?,
      birthDate: json['birth_date'] as String?,
      academicLevelId: json['academic_level_id'] as String?,
      stageLevelId: json['stage_level_id'] as String?,
    );

Map<String, dynamic> _$CompleteRegistrationParamsToJson(
        CompleteRegistrationParams instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'academic_level_id': instance.academicLevelId,
      'stage_level_id': instance.stageLevelId,
    };
