import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconButtonRedDotNotificationWidget extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  const IconButtonRedDotNotificationWidget(this.icon, {required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(
              icon,
              size: 35,
            ),
            onPressed: () => onTap(),
          ),
        ),
        _redDot(),
      ],
    );
  }

  Widget _redDot() {
    return Positioned(
      left: 25,
      top: 12,
      child: Container(
        decoration: new BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(7),
        ),
        constraints: BoxConstraints(
          minWidth: 10,
          minHeight: 10,
        ),
        child: Container(
          width: 1,
          height: 1,
        ),
      ),
    );
  }
}
