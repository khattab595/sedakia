// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordParams _$ChangePasswordParamsFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordParams(
      oldPassword: json['oldPassword'] as int?,
      newPassword: json['newPassword'] as int?,
      newPasswordConfirmation: json['newPassword_confirmation'] as int?,
    );

Map<String, dynamic> _$ChangePasswordParamsToJson(
        ChangePasswordParams instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
      'newPassword_confirmation': instance.newPasswordConfirmation,
    };
