import 'package:booktickets/utils/app-layout.dart';
import 'package:booktickets/utils/app-styles.dart';
import 'package:booktickets/widgets/column-layout.dart';
import 'package:booktickets/widgets/thick-container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isColor == null
                      ? const Color.fromARGB(255, 46, 154, 243)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)),
                  )),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Style.headLineStyle3.copyWith(color: Colors.white)
                            : Style.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeight(1),
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: isColor == null
                                                      ? Colors.white
                                                      : Colors.grey.shade300)),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : const Color.fromARGB(221, 121, 160, 233),
                            ),
                          ),
                        ),
                      ])),
                      ThickContainer(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Style.headLineStyle3.copyWith(color: Colors.white)
                            : Style.headLineStyle3,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Style.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Style.headLineStyle4.copyWith(color: Colors.white)
                            : Style.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Style.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Style.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor == null ? Style.blockColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(6)),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainHeight(15).floor()),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade300,
                                    )),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getHeight(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Style.blockColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0)),
              ),
              padding: const EdgeInsets.only(
                  top: 10, left: 16, right: 16, bottom: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: ticket['date'],
                      secondText: "Date",
                      alignment: CrossAxisAlignment.start,
                      isColor: isColor,
                    ),
                    ColumnLayout(
                      firstText: ticket['departure_time'],
                      secondText: "Departure Time",
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor,
                    ),
                    ColumnLayout(
                      firstText: ticket['number'].toString(),
                      secondText: "Number",
                      alignment: CrossAxisAlignment.end,
                      isColor: isColor,
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
