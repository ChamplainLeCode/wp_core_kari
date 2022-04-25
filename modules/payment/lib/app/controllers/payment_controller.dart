import 'package:karee/annotations.dart';
import 'package:karee/navigation.dart';
import '../screens/dashboard/components/schedule_transaction.dart';
import '../screens/dashboard/components/favorites_tab.dart';
import '../screens/dashboard/components/transactions_tab.dart';
import '../entities/transaction.dart';
import '../screens/dashboard/dashboard_transaction_screen.dart';
import '../screens/dashboard/payment_dashboard_screen.dart';
import '../screens/payment_home_screen.dart';
import '../services/payment_service.dart';

/// Generated Karee Controller
///
///
/// `Payment` is set as Controller
@Controller
class PaymentController {
  static PaymentController get instance =>
      KareeInjector.instance<PaymentController>()!;

  @Value('@{api.om}')
  late final String omApi;

  @Value('@{api.mtn}')
  late final String mtnApi;

  @Autowired
  late final PaymentService paymentService;

  void openTransactionTab() {
    switch (int.parse(KareeRouter.pathVariables!['tabId']!)) {
      case 0:
        screen(TransactionsTab(), RouteMode.INTERNAL,
            routerName: #transactionRouter,
            argument: paymentService.getAllTransaction());
        break;
      case 1:
        screen(FavoriteTab(), RouteMode.INTERNAL,
            routerName: #transactionRouter,
            argument: paymentService.getFavorites());
        break;
      case 2:
        screen(
          ScheduleTransaction(),
          RouteMode.INTERNAL,
          routerName: #transactionRouter,
        );
        break;
    }
  }

  Future<List<Transaction>> getAllTransaction() {
    return paymentService.getAllTransaction();
  }

  void transactionScreen() {
    screen(DashboardTransactionScreen(), RouteMode.PUSH);
  }

  void dashboardScreen() {
    screen(PaymentDashboardScreen(), RouteMode.PUSH);
  }

  void homeScreen() {
    screen(PaymentHomeScreen(), RouteMode.PUSH);
  }
}
