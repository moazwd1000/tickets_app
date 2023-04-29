import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/styles.dart';

class AppTextSmallBig extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppTextSmallBig(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headlineStyle2),
        InkWell(
          onTap: () {},
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primarycolor)),
        ),
      ],
    );
  }
}
