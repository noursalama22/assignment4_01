import 'package:flutter/material.dart';

class ButttonWidget extends StatelessWidget {
  final double padding;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double iconSize;
  final List<BoxShadow> boxShadow;

  const ButttonWidget({
    Key? key,
    this.padding = 0,
    this.iconSize = 24,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      padding: EdgeInsetsDirectional.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: boxShadow,
        shape: BoxShape.circle,
      ),
    );
  }
}
