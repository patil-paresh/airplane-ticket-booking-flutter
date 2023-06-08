import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app-layout.dart';
import '../utils/app-styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const ColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Style.headLineStyle3.copyWith(color: Colors.white)
              : Style.headLineStyle3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          secondText,
          style: isColor == null
              ? Style.headLineStyle4.copyWith(color: Colors.white)
              : Style.headLineStyle4,
        )
      ],
    );
  }
}
