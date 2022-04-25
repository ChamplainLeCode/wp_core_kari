import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */
class IconBadge extends StatelessComponent {
  final double size;
  final int number;
  final IconData icon;
  final Function callBack;
  final Color color;

  final Color badgeColor;

  final int iconSize;

  IconBadge(
      {this.size = 50,
      this.number = 0,
      Key? key,
      required this.icon,
      required this.callBack,
      required this.color,
      this.iconSize = 20,
      this.badgeColor = Colors.transparent})
      : assert(number >= 0),
        super(key: key);

  @override
  Widget builder(BuildContext context) {
    return Container(
      width: size,
      margin: EdgeInsets.only(left: 1),
      height: size,
      child: Stack(
        children: [
          Center(
              child: IconButton(
            icon: Icon(
              icon,
              size: iconSize.toDouble(),
              color: color,
            ),
            onPressed: () => callBack(),
          )),
          if (number > 0)
            Positioned(
                right: 0,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      color: badgeColor),
                  height: 12,
                  width: 15,
                  alignment: Alignment.center,
                  child: Text(
                    '$number',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ))
        ],
      ),
    );
  }
}
