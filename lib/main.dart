import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/core.dart' show KareeMaterialApp, initCore, KareeInstanceProfile, ErrorContactAddress;
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
      /// This is the profile of your application on production
      /// replace KareeInstanceProfile.production by KareeInstanceProfile.development
      /// during development, to better manage error in your application
        profile: KareeInstanceProfile.production,
      /// When you are going to release your application, you need to turn
      /// your application profile to production and setup the error contact.
      /// You can also customize your application general error screen. And if
      /// you need you access to your error contact address use the static variable
      /// KareeMaterialApp.globalErrorContactAddress
        errorContactAddress: ErrorContactAddress(
          appName: 'Karee Sample',
          appSupportEmail: 'support@bixterprise.com',
          appVersion: "v9.0.3",
        ),
        // This represents your app's title
        title: 'Karee Sample App',
        debugShowCheckedModeBanner: false);
  }
}
