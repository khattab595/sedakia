// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyRequestParams _$MyRequestParamsFromJson(Map<String, dynamic> json) =>
    MyRequestParams(
      id: json['status'] as String?,
      name: json['page'] as String?,
    );

Map<String, dynamic> _$MyRequestParamsToJson(MyRequestParams instance) =>
    <String, dynamic>{
      'status': instance.id,
      'page': instance.name,
    };
