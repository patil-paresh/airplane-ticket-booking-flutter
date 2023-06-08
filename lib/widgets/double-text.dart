import 'package:flutter/material.dart';

import '../utils/app-styles.dart';

class DoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Style.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            debugPrint("you have tapped");
          },
          child: Text(
            smallText,
            style: Style.textStyle.copyWith(color: Style.primaryColor),
          ),
        )
      ],
    );
  }
}
