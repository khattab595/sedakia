// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) =>
    TransactionDto(
      id: json['id'] as int?,
      account: json['account'] as int?,
      status: json['status'] as String?,
      amount: json['amount'] as int?,
      date: json['date'] as String?,
      statusName: json['status_name'] as String?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$TransactionDtoToJson(TransactionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'status': instance.status,
      'amount': instance.amount,
      'date': instance.date,
      'status_name': instance.statusName,
      'method': instance.method,
    };
