import 'package:booktickets/utils/app-layout.dart';
import 'package:booktickets/utils/app-styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
      margin: const EdgeInsets.only(top: 5, right: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          color: Style.primaryColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: AppLayout.getHeight(180),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Style.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("${hotel["image"]}"),
              )),
        ),
        Gap(AppLayout.getHeight(10)),
        Text(
          "${hotel["place"]}",
          style: Style.headLineStyle2
              .copyWith(color: const Color.fromARGB(255, 236, 215, 185)),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          "${hotel["destination"]}",
          style: Style.headLineStyle2.copyWith(color: Colors.white),
        ),
        Gap(AppLayout.getHeight(8)),
        Text(
          "\$${hotel["price"]}/night",
          style: Style.headLineStyle2
              .copyWith(color: const Color.fromARGB(255, 236, 215, 185)),
        ),
      ]),
    );
  }
}
