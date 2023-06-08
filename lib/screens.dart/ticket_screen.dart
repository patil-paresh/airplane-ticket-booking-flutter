import 'package:booktickets/screens.dart/ticket_view.dart';
import 'package:booktickets/utils/app-layout.dart';
import 'package:booktickets/utils/app-styles.dart';
import 'package:booktickets/utils/app_info.dart';
import 'package:booktickets/widgets/column-layout.dart';
import 'package:booktickets/widgets/ticket-tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Style.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const TicketTab(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: "Zoro X Luffy",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        ColumnLayout(
                          firstText: "3521 747976",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(
                          firstText: "24573 357654",
                          secondText: "Number of E-Tickets",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        ColumnLayout(
                          firstText: "PP5648",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://logos-download.com/wp-content/uploads/2016/02/Visa_Logo_2014.png",
                                  scale: 110,
                                ),
                                Text(
                                  " *** 0022",
                                  style: Style.headLineStyle3,
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              "Payment Method",
                              style: Style.headLineStyle4,
                            ),
                          ],
                        ),
                        const ColumnLayout(
                          firstText: "\$499",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)))),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20)),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                    right: AppLayout.getHeight(15)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: "https://www.qatarairways.com/",
                      drawText: false,
                      color: Style.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            left: AppLayout.getHeight(22),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Style.textColor, width: 2)),
              child: CircleAvatar(
                backgroundColor: Style.textColor,
                maxRadius: 4,
              ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            right: AppLayout.getHeight(22),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Style.textColor, width: 2)),
              child: CircleAvatar(
                backgroundColor: Style.textColor,
                maxRadius: 4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
