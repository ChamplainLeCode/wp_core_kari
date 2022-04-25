import 'package:flutter/material.dart';
import 'package:karee/core.dart';
import 'package:karee/navigation.dart';
import 'package:karee/widgets.dart';
import '../../components/icon_badge.dart';
import 'components/dashboard_card.dart';
import '../../utils/style.dart';
import '../../../payment_module.dart';

/// Generated Karee Screen
///
/// `PaymentDashboardScreen` is set as Screen with name ``

class PaymentDashboardScreen extends StatelessScreen {
  @override
  Widget builder(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.whiteText,
        appBar: AppBar(
          excludeHeaderSemantics: true,
          leading: PackageManager.ofWidget(BackButton(
            color: Style.primaryColor,
          )),
          title: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.png',
                            package:
                                PackageManager.resourceOf<PaymentModule>()))),
                margin: EdgeInsets.only(right: 20),
              ),
              SizedBox(
                  height: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Style.profileTextGrey.color,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Spacer(),
                      Text('Ken Park',
                          style: TextStyle(
                              color: Style.primaryDashboardDarkColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16))
                    ],
                  )),
              Spacer(),
              IconBadge(
                icon: Icons.notifications,
                callBack: () => null,
                color: Style.primaryColor,
                badgeColor: Style.dangerColor,
                number: 10,
                iconSize: 30,
                size: 40,
              )
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      // color: Colors.pink,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Style.profileTextGrey.color!)),
                  height: 50,
                  width: screenSize.width,
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Icon(
                      Icons.search,
                      color: Style.profileTextGrey.color,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 13, left: 15),
                          border: InputBorder.none,
                          hintText: 'Search'),
                    ))
                  ])),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Services',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Style.primaryDashboardDarkColor),
                    textAlign: TextAlign.start,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(
                      icon: Icons.payments_outlined,
                      color: Colors.yellowAccent[700]!,
                      text: 'Balance'),
                  DashboardCard(
                      icon: Icons.payment_rounded,
                      color: Style.dangerColor,
                      onTap: () =>
                          KareeRouter.goto('/payment/dashboard/transactions'),
                      text: 'Transfer'),
                  DashboardCard(
                      icon: Icons.wifi_outlined,
                      color: Colors.purple[900]!,
                      text: 'Internet'),
                  DashboardCard(
                      icon: Icons.monetization_on_outlined,
                      color: Style.successColor,
                      text: 'Pay Bill'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(
                      icon: Icons.tram_rounded,
                      color: Style.warningColor,
                      text: 'Public Transport'),
                  DashboardCard(
                      icon: Icons.local_taxi_outlined,
                      color: Style.primaryDashboardColor,
                      text: 'Pay Toll'),
                  DashboardCard(
                      icon: Icons.home_rounded,
                      color: Colors.teal,
                      text: 'Insurance'),
                  DashboardCard(
                      icon: Icons.calculate_rounded,
                      color: Style.infoColor,
                      text: 'Pay Tax'),
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 30, top: 50),
                  child: Text(
                    'Special for you',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Style.primaryDashboardDarkColor),
                    textAlign: TextAlign.start,
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Style.primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Cinema Ticket',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Style.primaryDashboardDarkColor),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text.rich(
                              TextSpan(
                                  text: '80%',
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      color: Style.primaryDashboardDarkColor),
                                  children: [
                                    TextSpan(
                                        text: '     OFF',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Style.primaryDashboardDarkColor,
                                            fontWeight: FontWeight.w400))
                                  ]),
                              textAlign: TextAlign.center,
                            )),
                        ElevatedButton(
                            // child: Container(
                            //   alignment: Alignment.center,
                            //   width: 130,
                            child: Text(
                              'View Promotion',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w300),
                            ),
                            // height: 40,
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(20)),

                            onPressed: () => 1,
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                primary: Style.primaryColor))
                      ])),
            ],
          ),
        ));
  }
}
