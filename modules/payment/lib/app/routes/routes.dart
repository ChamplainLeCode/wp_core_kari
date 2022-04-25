import 'package:karee/navigation.dart' show Route;
import '../controllers/payment_controller.dart';

/*
 * By Karee
 * 
 */
void registeredRoute() {
  Route.on('/payment', PaymentController.instance.homeScreen);
  Route.on('/payment/dashboard', PaymentController.instance.dashboardScreen);
  Route.on('/payment/dashboard/transactions',
      PaymentController.instance.transactionScreen);
  Route.on('/payment/transaction/tab/{tabId}',
      PaymentController.instance.openTransactionTab);

  Route.on('/payment/api/all_transactions',
      PaymentController.instance.getAllTransaction);
}
