// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordParams _$ForgotPasswordParamsFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordParams(
      newPassword: json['new_password'] as String?,
      newPasswordConfirmation: json['new_password_confirmation'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordParamsToJson(
        ForgotPasswordParams instance) =>
    <String, dynamic>{
      'new_password': instance.newPassword,
      'new_password_confirmation': instance.newPasswordConfirmation,
    };
