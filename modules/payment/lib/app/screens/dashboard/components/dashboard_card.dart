import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';
import '../../../utils/style.dart';

class DashboardCard extends StatelessComponent {
  final Color color;

  final IconData icon;

  final String text;

  final VoidCallback? onTap;

  DashboardCard(
      {Key? key,
      required this.icon,
      required this.color,
      required this.text,
      this.onTap})
      : super(key: key);

  @override
  Widget builder(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shadowColor: color.withOpacity(0.2),
                onSurface: color,
                primary: color.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: onTap ?? () => 0,
              child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(
                    icon,
                    color: color.withOpacity(0.7),
                    size: 40,
                  ))),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Style.primaryDashboardDarkColor),
          )
        ],
      ),
    );
  }
}
