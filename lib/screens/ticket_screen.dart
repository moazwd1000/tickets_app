import 'dart:ffi';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_info_list.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/styles.dart';
import 'package:tickets/widgets/layout_builder.dart';
import 'package:tickets/widgets/ticket_text.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            const Gap(40),
            Text("Tickets", style: Styles.headlineStyle1),
            const Gap(5),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(height: 1),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const AppColumnSymbol(
                        isColor: true,
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                      ),
                      const AppColumnSymbol(
                        isColor: true,
                        firstText: '5221 364869',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const Gap(20),
                  const AppLayoutBuilder(
                    sections: 15,
                    isColor: true,
                    width: 5,
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const AppColumnSymbol(
                        isColor: true,
                        firstText: '1514245 154212',
                        secondText: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                      ),
                      const AppColumnSymbol(
                        isColor: true,
                        firstText: 'B28SB1',
                        secondText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const Gap(20),
                  const AppLayoutBuilder(
                    sections: 15,
                    isColor: true,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("images/visa.png", scale: 11),
                              Text(" **** 2462", style: Styles.headlineStyle3)
                            ],
                          ),
                          Gap(5),
                          Text(
                            "Payment Method",
                            style: Styles.headlineStyle4,
                          )
                        ],
                      ),
                      const AppColumnSymbol(
                        firstText: "\$ 249.99",
                        secondText: "price",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                ],
              ),
            ),
            //Bar Code
            const SizedBox(height: 1),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(right: 15, left: 15),
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(19),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Styles.textColor),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(19),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Styles.textColor),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}
