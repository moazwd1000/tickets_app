import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xFF4F6FD),
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(20))),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(20))),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
