import 'package:booktickets/utils/app-styles.dart';
import 'package:booktickets/widgets/icon-text.dart';
import 'package:booktickets/widgets/ticket-tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app-layout.dart';
import '../widgets/double-text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \n you looking for?",
            style: Style.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(40)),
          const TicketTab(firstTab: "Airline Tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(18),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                  color: const Color.fromARGB(255, 60, 116, 219)),
              child: Center(
                  child: Text(
                "Find Tickets",
                style: Style.textStyle.copyWith(color: Colors.white),
              ))),
          Gap(AppLayout.getHeight(40)),
          const DoubleText(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(15),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.CLHi_CGMbx4Ua_waPu-0XQHaE6?w=265&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                          )),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "40% discount on early booking. Go visit new places.",
                      style: Style.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                          color: const Color.fromARGB(255, 238, 23, 102),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor surveys.",
                              style: Style.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Hurry up!!\nTake surveys for discounts.",
                              style: Style.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18,
                                  color:
                                      const Color.fromARGB(255, 186, 17, 17)),
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color.fromARGB(255, 240, 198, 70)),
                    child: Column(
                      children: [
                        Text(
                          "Paresh Airlines",
                          style: Style.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        Text(
                          "Come fly with us.",
                          style: Style.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
