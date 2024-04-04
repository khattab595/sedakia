class Wallet {
  final int id;
  final String image;
  final String type;
  final String amount;
  final String date;

  Wallet({
    required this.id,
    required this.image,
    required this.type,
    required this.amount,
    required this.date,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      id: json['id'],
      image: json['image'],
      type: json['type'],
      amount: json['amount'],
      date: json['date'],
    );
  }
}
