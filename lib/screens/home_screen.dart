import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/hotels_screen.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/styles.dart';

import '../widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headlineStyle3,
                        ),
                        Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/ticket.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                  ),
                  child: Row(children: [
                    const Icon(
                      Icons.search,
                      color: Color(0xFF8FC205),
                    ),
                    Text(
                      "Search",
                      style: Styles.headlineStyle4,
                    )
                  ]),
                ),
                Gap(40),
                AppTextSmallBig(
                  bigText: "UpComing Flights",
                  smallText: "View All",
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: ticketList
                    .map((ticket) => TicketView(ticket: ticket))
                    .toList()),
          ),
          const Gap(10),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppTextSmallBig(
                bigText: "Hotels",
                smallText: "View All",
              )),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: hotelList
                    .map((hotel) => HotelScreen(hotel: hotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
