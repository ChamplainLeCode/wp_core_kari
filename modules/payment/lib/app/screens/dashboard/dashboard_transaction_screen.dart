import 'package:flutter/material.dart';
import 'package:karee/core.dart';
import 'package:karee/navigation.dart';
import 'package:karee/widgets.dart';
import '../../entities/transaction.dart';

import 'components/transactions_tab.dart';
import '../../utils/style.dart';

/// Generated Karee Screen
///
/// `DashboardTransactionScreen` is set as Screen with name ``

class DashboardTransactionScreen extends StatelessScreen {
  final Of<int> selectedMenu = Of(0);

  @override
  Widget builder(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.greyBackground,
        appBar: PackageManager.ofWidget(AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Style.primaryDashboardDarkColor,
          ),
        )),
        body: Column(
          children: [
            Container(
              height: 300,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(color: Style.greyBackground),
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    width: screenSize.width,
                    child: FittedBox(
                        child: Container(
                      height: 200,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Style.primaryColor,
                      ),
                      width: 350,
                      child: Column(
                        children: [
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(),
                              Text(
                                '****',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Style.whiteText,
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                              Text(
                                '****',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Style.whiteText,
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                              Text(
                                '****',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Style.whiteText,
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                              Text(
                                '7654',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Style.whiteText,
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                            ],
                          )),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Spacer(),
                                Text(
                                  'cvv2 ***',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Style.whiteText,
                                      fontWeight: FontWeight.w300),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                Text(
                                  'exp ****',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Style.whiteText,
                                      fontWeight: FontWeight.w300),
                                ),
                                Spacer()
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  )),
                  Container(
                    height: 50,
                    color: Style.greyBackground,
                    width: screenSize.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.dangerColor),
                          height: 10,
                          width: 70,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.dangerColor),
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Style.dangerColor),
                          height: 10,
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 50,
                      color: Style.greyBackground,
                      width: screenSize.width,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Observer(
                                of: selectedMenu,
                                child: (_) => ElevatedButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                              selectedTabBackgroundColor(0),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  topRight:
                                                      Radius.circular(15)))),
                                      child: Container(
                                          height: 50,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'All Transactions',
                                            style: TextStyle(
                                                color: selectedTabColor(0),
                                                fontWeight: FontWeight.bold),
                                          )),
                                      onPressed: () => openTab(0),
                                    )),
                            Observer(
                                of: selectedMenu,
                                child: (_) => ElevatedButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                              selectedTabBackgroundColor(1),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  topRight:
                                                      Radius.circular(15)))),
                                      child: Container(
                                          height: 50,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Favorite',
                                            style: TextStyle(
                                                color: selectedTabColor(1),
                                                fontWeight: FontWeight.bold),
                                          )),
                                      onPressed: () => openTab(1),
                                    )),
                            Observer(
                                of: selectedMenu,
                                child: (_) => ElevatedButton(
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                              selectedTabBackgroundColor(2),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  topRight:
                                                      Radius.circular(15)))),
                                      child: Container(
                                          height: 50,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Scheduled',
                                            style: TextStyle(
                                                color: selectedTabColor(2),
                                                fontWeight: FontWeight.bold),
                                          )),
                                      onPressed: () => openTab(2),
                                    )),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
                child: Container(
                    color: Colors.white,
                    child: RouterWidget(
                        name: #transactionRouter,
                        initial: FutureBuilder<List<Transaction>>(
                            future: KareeRouter.goto(
                                '/payment/api/all_transactions'),
                            initialData: null,
                            builder: (_, sn) {
                              if (!sn.hasData || sn.hasError) {
                                return Text('error');
                              }
                              return TransactionsTab(sn.data!);
                            }))))
          ],
        ));
  }

  Color selectedTabColor(int tab) => selectedMenu.value == tab
      ? Style.primaryColor
      : Style.primaryDashboardDarkColor;
  Color selectedTabBackgroundColor(int tab) =>
      selectedMenu.value == tab ? Style.whiteText : Style.greyBackground;

  void openTab(int tab) {
    selectedMenu.value = tab;
    KareeRouter.goto('/payment/transaction/tab/$tab');
  }
}
