// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) => CustomerDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalUsers: json['total_users'] as int?,
      totalPages: json['total_pages'] as int?,
      currentPage: json['current_page'] as int?,
    );

Map<String, dynamic> _$CustomerDtoToJson(CustomerDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total_users': instance.totalUsers,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      userLogin: json['user_login'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'user_login': instance.userLogin,
      'email': instance.email,
      'phone': instance.phone,
    };
