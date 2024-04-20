// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facility_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacilityDto _$FacilityDtoFromJson(Map<String, dynamic> json) => FacilityDto(
      id: json['id'] as int?,
      num: json['num'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$FacilityDtoToJson(FacilityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'address': instance.address,
    };
