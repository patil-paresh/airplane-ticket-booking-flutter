import 'package:booktickets/utils/app-layout.dart';
import 'package:booktickets/utils/app-styles.dart';
import 'package:booktickets/widgets/column-layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://th.bing.com/th/id/R.fad06d65bcf9d2bc0620a38480eeafe1?rik=63WZ8EWOqUEMOw&riu=http%3a%2f%2fgetdrawings.com%2ffree-icon%2fpilot-wings-icon-56.png&ehk=yMgnYsyE0MQyPbIo74ccgoJq2NHMyPJm%2fWVfsiSp6VA%3d&risl=&pid=ImgRaw&r=0")),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Style.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(100),
                        ),
                        color: const Color.fromARGB(255, 235, 211, 211)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint("you tapped Edit on profile-screen");
                    },
                    child: Text(
                      "Edit",
                      style: Style.textStyle.copyWith(
                          color: Style.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Style.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18,
                          color: const Color.fromARGB(255, 11, 79, 249))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        size: 27,
                        color: Style.primaryColor,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new reward",
                          style: Style.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 39 flights in a year",
                          style: Style.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Style.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(10)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
                color: Style.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1),
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "211998",
                  style: TextStyle(
                    fontSize: 45,
                    color: Style.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Accrued",
                      style: Style.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "06 June 2023",
                      style: Style.headLineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(5)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                firstText: "69 420",
                secondText: "Miles",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              ColumnLayout(
                firstText: "Airline Co",
                secondText: "Recieved From",
                alignment: CrossAxisAlignment.end,
                isColor: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(24)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                firstText: "72",
                secondText: "Miles",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              ColumnLayout(
                firstText: "Devlopers Inc",
                secondText: "Recieved From",
                alignment: CrossAxisAlignment.end,
                isColor: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(24)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                firstText: "32 867",
                secondText: "Miles",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              ColumnLayout(
                firstText: "Paresh Co-op",
                secondText: "Recieved From",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          InkWell(
            onTap: () {
              debugPrint(" You have tapped on get more miles");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Style.textStyle.copyWith(
                    color: Style.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
