import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';
import '../../../entities/transaction.dart';
import '../../../utils/style.dart';

class TransactionsTab extends RoutableWidget {
  final List<Transaction>? data;

  TransactionsTab([this.data]);

  @override
  Widget builder(BuildContext context, Object? parameter) {
    Future<List<Transaction>> transactions =
        (parameter != null && parameter is Future<List<Transaction>>)
            ? parameter
            : data != null
                ? Future.value(data!)
                : Future.value(<Transaction>[]);

    return FutureBuilder<List<Transaction>>(
        future: transactions,
        builder: (_, snap) {
          if (snap.hasError) {
            return Center(
                child: TextButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.error_outline,
                      color: Style.dangerColor.withOpacity(0.4),
                    ),
                    label: Text('Something went wrong',
                        style: TextStyle(
                            color: Style.dangerColor.withOpacity(0.7)))));
          }
          if (!snap.hasData) {
            return Center(
                child: TextButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.warning_amber,
                      color: Style.primaryDashboardDarkColor.withOpacity(0.4),
                    ),
                    label: Text('No data',
                        style: TextStyle(
                            color: Style.primaryDashboardDarkColor
                                .withOpacity(0.7)))));
          }

          return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (_, ind) {
                var transaction = snap.data![ind];

                return ListTile(
                  leading: SizedBox(
                    height: 80,
                    width: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shadowColor: Style.dangerColor.withOpacity(0.2),
                          onSurface: Style.dangerColor,
                          primary: Style.dangerColor.withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () => 0,
                        child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Icon(
                              Icons.group,
                              color: Style.dangerColor.withOpacity(0.7),
                              size: 40,
                            ))),
                  ),
                  title: Text(transaction.cartId),
                  subtitle: Text('${transaction.date}  ${transaction.time}'),
                  trailing: Icon(Icons.list),
                );
              });
        });
  }
}
