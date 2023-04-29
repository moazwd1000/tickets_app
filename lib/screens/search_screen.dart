import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/styles.dart';
import 'package:tickets/widgets/double_text_widget.dart';

import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \n you Looking for?",
            style: Styles.headlineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(40)),
          AppTicketTabs(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          const Gap(25),
          AppIcon(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(15),
          AppIcon(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(20),
          Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xD91130CE)),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          const Gap(40),
          AppTextSmallBig(bigText: "UpComing Flights", smallText: "View All"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                height: AppLayout.getHeight(405),
                width: size.width * 0.42,
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/sit.jpg"))),
                    ),
                    const Gap(12),
                    Text(
                        "20% discount on the early booking of this flight.Dont miss out this chance",
                        style: Styles.headlineStyle2)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(144),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8BB),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\n for survey",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Gap(10),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(children: [
                      Text(
                        "Take Love",
                        style: Styles.headlineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(5),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "😍",
                          style: TextStyle(fontSize: 30),
                        ),
                        TextSpan(
                          text: "😘",
                          style: TextStyle(fontSize: 50),
                        ),
                        TextSpan(
                          text: "😍",
                          style: TextStyle(fontSize: 30),
                        ),
                      ]))
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
