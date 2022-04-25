import './payment_reason.dart';

class Transaction {
  String cartId, date, time;
  int amount;
  PaymentReason reason;

  Transaction(this.cartId, this.amount, this.date, this.time, this.reason);
}
