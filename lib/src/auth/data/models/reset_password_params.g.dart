// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordParams _$ResetPasswordParamsFromJson(Map<String, dynamic> json) =>
    ResetPasswordParams(
      newPassword: json['new_password'] as String?,
      newPasswordConfirmation: json['new_password_confirmation'] as String?,
    );

Map<String, dynamic> _$ResetPasswordParamsToJson(
        ResetPasswordParams instance) =>
    <String, dynamic>{
      'new_password': instance.newPassword,
      'new_password_confirmation': instance.newPasswordConfirmation,
    };
