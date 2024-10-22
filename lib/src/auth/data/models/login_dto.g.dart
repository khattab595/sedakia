// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      token: json['token'] as String?,
      userObj: json['user_obj'] == null
          ? null
          : UserObj.fromJson(json['user_obj'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'token': instance.token,
      'user_obj': instance.userObj,
    };

UserObj _$UserObjFromJson(Map<String, dynamic> json) => UserObj(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserObjToJson(UserObj instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      ID: json['ID'] as String?,
      userLogin: json['user_login'] as String?,
      userPass: json['user_pass'] as String?,
      userNicename: json['user_nicename'] as String?,
      userEmail: json['user_email'] as String?,
      userUrl: json['user_url'] as String?,
      userRegistered: json['user_registered'] as String?,
      userActivationKey: json['user_activation_key'] as String?,
      userStatus: json['user_status'] as String?,
      displayName: json['display_name'] as String?,
      spam: json['spam'] as String?,
      deleted: json['deleted'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'ID': instance.ID,
      'user_login': instance.userLogin,
      'user_pass': instance.userPass,
      'user_nicename': instance.userNicename,
      'user_email': instance.userEmail,
      'user_url': instance.userUrl,
      'user_registered': instance.userRegistered,
      'user_activation_key': instance.userActivationKey,
      'user_status': instance.userStatus,
      'display_name': instance.displayName,
      'spam': instance.spam,
      'deleted': instance.deleted,
    };

Caps _$CapsFromJson(Map<String, dynamic> json) => Caps(
      subscriber: json['subscriber'] as bool?,
    );

Map<String, dynamic> _$CapsToJson(Caps instance) => <String, dynamic>{
      'subscriber': instance.subscriber,
    };

Allcaps _$AllcapsFromJson(Map<String, dynamic> json) => Allcaps(
      read: json['read'] as bool?,
      level_0: json['level_0'] as bool?,
      subscriber: json['subscriber'] as bool?,
    );

Map<String, dynamic> _$AllcapsToJson(Allcaps instance) => <String, dynamic>{
      'read': instance.read,
      'level_0': instance.level_0,
      'subscriber': instance.subscriber,
    };
