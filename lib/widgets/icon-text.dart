import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app-layout.dart';
import '../utils/app-styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey.shade500,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Style.textStyle,
          )
        ],
      ),
    );
  }
}
