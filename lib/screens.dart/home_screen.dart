import 'package:booktickets/screens.dart/hotel_screen.dart';
import 'package:booktickets/screens.dart/ticket_view.dart';
import 'package:booktickets/utils/app_info.dart';
import 'package:booktickets/utils/app-styles.dart';
import 'package:booktickets/widgets/double-text.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("PARESH AIRLINES", style: Style.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Style.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/R.fad06d65bcf9d2bc0620a38480eeafe1?rik=63WZ8EWOqUEMOw&riu=http%3a%2f%2fgetdrawings.com%2ffree-icon%2fpilot-wings-icon-56.png&ehk=yMgnYsyE0MQyPbIo74ccgoJq2NHMyPJm%2fWVfsiSp6VA%3d&risl=&pid=ImgRaw&r=0"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey,
                      ),
                      Text(
                        "Search",
                        style: Style.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                const DoubleText(
                    bigText: "Upcoming Flights", smallText: "View all"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleText(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
