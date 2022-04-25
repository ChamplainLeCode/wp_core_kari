// import 'package:karee_sample/core/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show WidgetsFlutterBinding;
import 'package:karee/core.dart';
import 'package:karee/widgets.dart';
import 'app.module.dart';
import '../../app/routes/routes.dart';
import 'extensions/extensions_controllers.dart';

///
/// by Champlain Marius Bakop
///
/// email champlainmarius20@gmail.com
///
/// github ChamplainLeCode
///
///

void initControllerReflectable() {
  ///
  /// Here we subscribe controllers
  ///
  controllers.forEach(subscribeController);
  screens.forEach(subscribeScreen);
}

Future<void> initCore(KareeRoutableModule module) async {
  if (kDebugMode) {
    print('Module Payment: Initialization started');
  }
  WidgetsFlutterBinding.ensureInitialized();
  await loadAppConfig(KareeMaterialApp.type == KareeApplicationType.module
      ? ''
      : 'packages/${module.name}/');
  initControllerReflectable();
  registeredRoute();
  if (kDebugMode) {
    print('Module Payment: Initialisation ended');
  }
}
