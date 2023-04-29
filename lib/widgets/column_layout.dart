import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class AppColumnSymbol extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnSymbol(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headlineStyle3.copyWith(color: Colors.white)
              : Styles.headlineStyle3,
        ),
        const Gap(5),
        Text(
          secondText,
          style: isColor == null
              ? Styles.headlineStyle4.copyWith(color: Colors.white)
              : Styles.headlineStyle4,
        ),
      ],
    );
  }
}
