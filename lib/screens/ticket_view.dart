import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tickets/widgets/tickets_container.dart';
import 'package:tickets/utils/styles.dart';

import '../utils/app_layout.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  final Map<String, dynamic> ticket;
  TicketView({required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 162 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(ticket["from"]["code"],
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3),
                    const Spacer(),
                    TicketContainer(
                      isColor: true,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(sections: 15),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TicketContainer(
                      isColor: true,
                    ),
                    const Spacer(),
                    Text(ticket["to"]["code"],
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3),
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        ticket["from"]["name"],
                        style: isColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                    ),
                    Text(
                      ticket["flying_time"],
                      style: isColor == null
                          ? Styles.headlineStyle4.copyWith(color: Colors.white)
                          : Styles.headlineStyle4,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        ticket["to"]["name"],
                        textAlign: TextAlign.end,
                        style: isColor == null
                            ? Styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: isColor == null ? Styles.orangeColor : Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: AppLayoutBuilder(
                      sections: 6,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0))),
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnSymbol(
                      isColor: isColor,
                      alignment: CrossAxisAlignment.start,
                      firstText: ticket["date"],
                      secondText: 'Departure',
                    ),
                    AppColumnSymbol(
                      isColor: isColor,
                      alignment: CrossAxisAlignment.center,
                      firstText: ticket["departure_time"],
                      secondText: 'Departure Time',
                    ),
                    AppColumnSymbol(
                      isColor: isColor,
                      alignment: CrossAxisAlignment.end,
                      firstText: ticket["number"].toString(),
                      secondText: 'Number',
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
