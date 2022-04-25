import 'package:karee/navigation.dart' show Route;
import '../controllers/dashboard/dash_board_controller.dart';
import '../controllers/home/home_controller.dart';

/*
 * By Karee
 * 
 */
void registeredRoute() {
  Route.on('/', HomeController.instance.index);
  Route.on('/dashboard', DashBoardController.instance.home);
  Route.on('/dashboard/{menu}', DashBoardController.instance.menuScreen);
}
