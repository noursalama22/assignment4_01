import 'package:flutter/material.dart';

import 'button_widget.dart';

class MusicRowContainer extends StatelessWidget {
  final double button_padding;
  final double containerHMar;
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final Color iconBackgroundColor;
  final double iconSize;
  final List<BoxShadow> boxShadow;

  MusicRowContainer(
      {Key? key,
      required this.boxShadow,
      this.button_padding = 0,
      this.iconSize = 24,
      this.icon = Icons.arrow_right,
      required this.iconBackgroundColor,
      required this.iconColor,
      required this.title,
      required this.subTitle,
      this.containerHMar = 12,
      this.containerColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsetsDirectional.symmetric(
          vertical: 4, horizontal: containerHMar),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                subTitle,
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ],
          ),
          ButttonWidget(
              iconSize: iconSize,
              padding: button_padding,
              icon: icon,
              iconColor: iconColor,
              backgroundColor: iconBackgroundColor,
              boxShadow: boxShadow),
          // Container(
          //   padding: const EdgeInsets.all(8),
          //   decoration: BoxDecoration(
          //     boxShadow: const [
          //       BoxShadow(
          //         offset: Offset(5, 5),
          //         color: Colors.grey,
          //         blurRadius: 20,
          //         spreadRadius: 5,
          //       ),
          //       BoxShadow(
          //         offset: Offset(-5, -5),
          //         color: Colors.white,
          //         blurRadius: 20,
          //         spreadRadius: 5,
          //       ),
          //     ],
          //     shape: BoxShape.circle,
          //     color: Colors.grey[300],
          //   ),
          //   child: Icon(
          //     Icons.arrow_right,
          //     color: Colors.white,
          //     size: 24,
          //   ),
          // ),
        ],
      ),
    );
  }
}
