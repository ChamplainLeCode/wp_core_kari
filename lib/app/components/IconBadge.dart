import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */
class IconBadge extends StatefulWidget {
  final double? size;
  final int? number;
  final IconData? icon;
  final Function? callBack;
  final Color? color;

  IconBadge({
    this.size = 50,
    this.number = 0,
    this.icon,
    this.callBack,
    this.color
  }): assert(icon != null, number! >= 0);
  @override
  _IconBadgeState createState() => _IconBadgeState();

}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        width: widget.size,
        height: widget.size,
        child: Stack(
          children: widget.number == 0 ?
            [
              Center(
                child: IconButton(
                  icon:Icon(widget.icon,
                    size: 20,
                    color: widget.color ?? Color(0XAF474D3C),
                  ),
                  onPressed: widget.callBack!.call,
                )
              )
            ]
            :
            [
              Center(
                child: IconButton(
                  icon:Icon(widget.icon,
                    size: 20,
                    color: widget.color ?? Color(0XAF474D3C),
                  ),
                  onPressed: widget.callBack!.call,
                )
              ),
              Container(
                child: Center(child: Text(
                  "${widget.number}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300
                  ),
                )),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
                height: 15,
                width: 15,
                margin: EdgeInsets.only(
                  top: 11,
                  right: 0,
                  left: 30,
                  bottom: 10
                ),
              )
          ],
        ),
      )
    );
  }
}