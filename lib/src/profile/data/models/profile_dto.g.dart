// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => ProfileDto(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      stores: (json['qayds'] as List<dynamic>?)
          ?.map((e) => StoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileDtoToJson(ProfileDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'qayds': instance.stores,
    };

StoreDto _$StoreDtoFromJson(Map<String, dynamic> json) => StoreDto(
      id: json['id'] as int?,
      storeName: json['store_name'] as String?,
      storeLink: json['store_link'] as String?,
      isDefault: json['is_default'] as int?,
    );

Map<String, dynamic> _$StoreDtoToJson(StoreDto instance) => <String, dynamic>{
      'id': instance.id,
      'store_name': instance.storeName,
      'store_link': instance.storeLink,
      'is_default': instance.isDefault,
    };
