import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(top: 5, right: 17),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 20,
          spreadRadius: 5,
        ),
      ], color: Styles.primarycolor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primarycolor,
                image: DecorationImage(
                    image: AssetImage("images/${hotel["image"]}"),
                    fit: BoxFit.cover)),
          ),
          const Gap(10),
          Text(hotel["place"],
              style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor)),
          Text(hotel["destination"],
              style: Styles.headlineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text('\$ ${hotel['price']} /night',
              style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
