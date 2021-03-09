import '../app/app.module.dart';
import '../app/routes/Routes.dart';
import 'core.reflectable.dart';
import 'package:karee_core/karee_core.dart'
    show subscribeController, subscribeScreen;
export 'package:karee_core/karee_core.dart';
/*
 * @Author Champlain Marius Bakop
 * @Email champlainmarius20@gmail.com
 * @Github ChamplainLeCode
 * 
 */

void initControllerReflectable() {
  /**
   * Here we subscribe controllers
   */

  controllers.forEach(subscribeController);
  screens.forEach(subscribeScreen);
}

initCore() {
  print('Initialisation started');
  initializeReflectable();
  registeredRoute();
  initControllerReflectable();

  print('Initialisation ended');
}

main() {}
