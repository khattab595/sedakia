import 'package:json_annotation/json_annotation.dart'; 

part 'transaction_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class TransactionDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'account')
  int? account;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'status_name')
  String? statusName;
  @JsonKey(name: 'method')
  String? method;

  TransactionDto({this.id, this.account, this.status, this.amount, this.date, this.statusName, this.method});

   factory TransactionDto.fromJson(Map<String, dynamic> json) => _$TransactionDtoFromJson(json);

   Map<String, dynamic> toJson() => _$TransactionDtoToJson(this);
}

