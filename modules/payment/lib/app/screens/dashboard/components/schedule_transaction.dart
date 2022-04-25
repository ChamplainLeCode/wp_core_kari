import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';
import '../../../utils/style.dart';

class ScheduleTransaction extends RoutableWidget {
  ScheduleTransaction({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, parameter) {
    return Center(
        child: Icon(Icons.timer,
            size: 100,
            color: Style.primaryDashboardDarkColor.withOpacity(0.3)));
  }
}
