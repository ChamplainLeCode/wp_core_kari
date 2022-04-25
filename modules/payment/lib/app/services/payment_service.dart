import 'package:karee/annotations.dart';
import '../entities/favorite_transaction.dart';
import '../entities/payment_reason.dart';
import '../entities/transaction.dart';

@Service
class PaymentService {
  Future<List<Transaction>> getAllTransaction() async {
    return [
      Transaction('1800 **** **** 2324', -100, '31/11/22', '10:24 pm',
          PaymentReason.group),
      Transaction(
          'One Market', -800, '31/11/22', '10:24 pm', PaymentReason.shop),
      Transaction('2689 **** **** 3243', 1000, '31/11/22', '10:24 pm',
          PaymentReason.group),
      Transaction(
          'MC Donald', -400, '31/11/22', '10:24 pm', PaymentReason.restaurant),
      Transaction('2689 **** **** 3243', 1000, '31/11/22', '10:24 pm',
          PaymentReason.group),
    ];
  }

  Future<List<FavoritePurchase>> getFavorites() async {
    await Future.delayed(Duration(seconds: 10));
    return [FavoritePurchase('Mc Donald'), FavoritePurchase('One Market')];
  }
}
