export 'screens.dart';
import 'package:karee/core.dart';
import 'package:payment/payment_module.dart';

///
/// Author Champlain Marius Bakop
///
/// @Email [champlainmarius20@gmail.com](mailto://champlainmarius20@hotmail.com)
///
/// @Github [ChamplainLeCode](https://github.com/ChamplainLeCode)
///

void registeredModule() {
  //-------------------------------------------------------//
  //------------- BEGIN MODULE REGISTRATION    ------------//
  //-------------------------------------------------------//

  KareeModuleLoader.load(PaymentModule());

  //-------------------------------------------------------//
  //--------------- END MODULE REGISTRATION    ------------//
  //-------------------------------------------------------//
}
