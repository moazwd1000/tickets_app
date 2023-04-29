import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/styles.dart';
import 'package:tickets/widgets/column_layout.dart';
import 'package:tickets/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage("images/img_1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Book Tickets", style: Styles.headlineStyle1),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFFEF4F3),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primarycolor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                    color: Styles.primarycolor,
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
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.lightbulb,
                        size: 27,
                        color: Styles.primarycolor,
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
                          "You have got new award",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(18),
                ),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "192871",
                  style: TextStyle(
                      color: Styles.textColor,
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 Feb 2023",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const AppColumnSymbol(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    const AppColumnSymbol(
                      firstText: "Airline Co",
                      secondText: "Recieved From",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                AppLayoutBuilder(sections: 12, isColor: true),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const AppColumnSymbol(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    const AppColumnSymbol(
                      firstText: "McDonalds\'s",
                      secondText: "Recieved From",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const AppColumnSymbol(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    const AppColumnSymbol(
                      firstText: "DB",
                      secondText: "Recieved From",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Center(
                  child: Text(
                    "How to get more miles",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primarycolor,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
