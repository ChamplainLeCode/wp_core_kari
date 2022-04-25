import 'package:flutter/material.dart';
import 'package:karee/annotations.dart';
import 'package:karee/core.dart';
import 'package:karee/navigation.dart';

import 'package:karee/widgets.dart';
import '../utils/style.dart';
import '../../payment_module.dart';

/// Generated Karee Screen
///
/// `PaymentHomeScreen` is set as Screen with name ``
@Screen('payment_home', isInitial: true)
class PaymentHomeScreen extends StatelessScreen {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.primaryColor,
        appBar: KareeMaterialApp.type == KareeApplicationType.application
            ? AppBar(
                elevation: 0,
                backgroundColor: Style.primaryColor,
              )
            : null,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                      child: Icon(
                        Icons.vpn_key,
                        size: 45,
                        color: Style.dangerColor,
                      ),
                      quarterTurns: 1,
                    ),
                    Text(
                      'SecurePay',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    )
                  ]),
              Image.asset('assets/images/secure_pay_logo.png',
                  package: PackageManager.resourceOf<PaymentModule>()),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Secure and Reliable Payment',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                        'We have 24 hours smart protection system to ensure your payment is safe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Style.profileTextGrey.color),
                        textAlign: TextAlign.center),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.dangerColor),
                          height: 10,
                          width: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.profileTextGrey.color),
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.profileTextGrey.color),
                          height: 10,
                          width: 10,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: screenSize.width,
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Style.dangerColor,
                            primary: Style.whiteText),
                        child: Text(
                          'Get Started',
                        ),
                        onPressed: () {
                          KareeRouter.goto('/payment/dashboard');
                        },
                      ),
                    ),
                  ],
                ),
                // height: 300,

                width: screenSize.width,
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                    color: Style.whiteBackground,
                    borderRadius: BorderRadius.circular(30)),
              )
            ]));
  }
}
