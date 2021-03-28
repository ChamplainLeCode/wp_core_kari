import 'package:karee_core/karee_core.dart' show Controller, screen, RouteMode;

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */
@Controller
class HomeController {
  dynamic index() {
    screen("home", RouteMode.REPLACE);
  }
}
