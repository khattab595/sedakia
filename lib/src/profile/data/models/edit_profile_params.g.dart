// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileParams _$EditProfileParamsFromJson(Map<String, dynamic> json) =>
    EditProfileParams(
      image: _$JsonConverterFromJson<String, File>(
          json['image'], const FileJsonConverter().fromJson),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$EditProfileParamsToJson(EditProfileParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'image',
      _$JsonConverterToJson<String, File>(
          instance.image, const FileJsonConverter().toJson));
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
