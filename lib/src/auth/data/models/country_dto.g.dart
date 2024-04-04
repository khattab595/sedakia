// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) => CountryDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      currency: json['currency'] as String?,
      lang: json['lang'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$CountryDtoToJson(CountryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currency': instance.currency,
      'lang': instance.lang,
      'code': instance.code,
    };
