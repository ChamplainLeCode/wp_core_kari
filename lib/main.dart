import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/core.dart' show KareeMaterialApp, initCore;

///
/// @Author Champlain Marius Bakop
/// @Email champlainmarius20@gmail.com
/// @Github ChamplainLeCode
///

void main() {
  // Do not modify
  initCore();
  runApp(MyKareeApp());

  //! Add your custom configurations
  ///
  /// To stuck your app in portrait
  ///
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}

class MyKareeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Don't change this widget
    return KareeMaterialApp(

        // This represents your app's title
        title: 'Karee Sample App',
        theme: ThemeData(
            primaryColor: MaterialColor(0xFFBB5C39, {
              100: Color(0xFFBB5C39).withOpacity(0.1),
              200: Color(0xFFBB5C39).withOpacity(0.2),
              300: Color(0xFFBB5C39).withOpacity(0.3),
              400: Color(0xFFBB5C39).withOpacity(0.4),
              500: Color(0xFFBB5C39).withOpacity(0.5),
              600: Color(0xFFBB5C39).withOpacity(0.6),
              700: Color(0xFFBB5C39).withOpacity(0.7),
              800: Color(0xFFBB5C39).withOpacity(0.8),
              900: Color(0xFFBB5C39).withOpacity(0.9),
            }),
            secondaryHeaderColor: Color(0xFFBB5C39)),
        debugShowCheckedModeBanner: false);
  }
}
