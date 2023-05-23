import 'package:flutter/material.dart';

class ButttonWidget extends StatelessWidget {
  final double padding;
  final IconData icon;
  final Color iconColor;
  const ButttonWidget(
      {Key? key, this.padding = 0, required this.icon, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: iconColor,
      ),
      padding: EdgeInsetsDirectional.all(padding),
      decoration: BoxDecoration(color: Colors.grey[300]),
    );
  }
}
