// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordParams _$ChangePasswordParamsFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordParams(
      newPassword: json['new_password'] as String?,
      otp: json['otp'] as String?,
      newPasswordConfirmation: json['new_password_confirmation'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$ChangePasswordParamsToJson(
        ChangePasswordParams instance) =>
    <String, dynamic>{
      'new_password': instance.newPassword,
      'phone': instance.phone,
      'new_password_confirmation': instance.newPasswordConfirmation,
      'otp': instance.otp,
    };
