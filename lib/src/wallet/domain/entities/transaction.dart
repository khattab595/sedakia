
import '../../data/models/transaction_dto.dart';

class Transaction {
  int? id;
  int? account;
  String? status;
  int? amount;
  String? date;
  String? statusName;
  String? method;

  Transaction({this.id, this.account, this.status, this.amount, this.date, this.statusName, this.method});

   factory Transaction.fromDto(TransactionDto json) {
      return Transaction(
        id: json.id,
        account: json.account,
        status: json.status,
        amount: json.amount,
        date: json.date,
        statusName: json.statusName,
        method: json.method,
      );
   }
}

