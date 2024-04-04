
import 'package:app/core/utils/date_formatter.dart';

import '../../data/models/payment_method_dto.dart';

class PaymentMethod {
  int? id;
  String? name;
  String? type;
  String? accountNumber;
  String? provider;
  bool? isDefault;
  String? createdAt;
  String? method;
  String? activein;

  PaymentMethod({this.id, this.name, this.type, this.accountNumber, this.provider, this.isDefault, this.createdAt, this.method, this.activein});

   factory PaymentMethod.fromDto(PaymentMethodDto json) {
    return PaymentMethod(
      id: json.id,
      name: json.Name,
      type: json.type,
      accountNumber: json.accountNumber,
      provider: json.provider,
      isDefault: json.isDefault,
      createdAt: json.createdAt,
      method: json.method,
      activein: json.activein,
    );
   }

   String getActiveDateIn() {
     return DateFormatter.formatTimestampString(activein ?? '', format: DateFormatter.DATE_FORMAT);
   }

  String getCreatedAt() {
    return DateFormatter.formatTimestampString(createdAt ?? '', format: DateFormatter.DATE_FORMAT);
  }
}

