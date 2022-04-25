import 'payment_status.dart';

class Payment {
  double id;
  int amount;
  String name;
  DateTime effectiveDate;
  PaymentStatus status;

  Payment(this.id, this.amount, this.name, this.effectiveDate, this.status);
}
