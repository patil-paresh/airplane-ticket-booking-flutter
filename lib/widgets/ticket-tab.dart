import 'package:flutter/material.dart';

import '../utils/app-layout.dart';

class TicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTab({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color.fromARGB(255, 214, 200, 218)),
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
