// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_code_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationCodeParams _$VerificationCodeParamsFromJson(
        Map<String, dynamic> json) =>
    VerificationCodeParams(
      code: json['code'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$VerificationCodeParamsToJson(
        VerificationCodeParams instance) =>
    <String, dynamic>{
      'code': instance.code,
      'phone_number': instance.phoneNumber,
    };
