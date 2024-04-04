// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRequestParams _$CreateRequestParamsFromJson(Map<String, dynamic> json) =>
    CreateRequestParams(
      Amount: json['Amount'] as int?,
      Method: json['Method'] as int?,
      country: json['country'] as int?,
    );

Map<String, dynamic> _$CreateRequestParamsToJson(
        CreateRequestParams instance) =>
    <String, dynamic>{
      'Amount': instance.Amount,
      'Method': instance.Method,
      'country': instance.country,
    };
