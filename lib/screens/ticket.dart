import 'package:e_comers_app_1/utilse/app_layout.dart';
import 'package:e_comers_app_1/utilse/app_style.dart';
import 'package:e_comers_app_1/widgets/tickit_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class TicketViw extends StatelessWidget {
  final Map<String, dynamic> tick;
  final bool? iscolor;
  const TicketViw({super.key, required this.tick, this.iscolor});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(158),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    topRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(
                AppLayout.getHeight(12),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      tick['form']['code'],
                      style: iscolor == null
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black),
                    ),
                    Expanded(child: Container()),
                    const TickContainer(iscolor: true),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (p0, p1) {
                              return Flex(
                                direction: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    8,
                                    (index) => Text(
                                          "_",
                                          style: iscolor == null
                                              ? TextStyle(color: Colors.white)
                                              : TextStyle(color: Colors.black),
                                        )),
                              );
                            },
                          )),
                      Center(
                        child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: iscolor == null
                                  ? Colors.white
                                  : Color(0xFF8ACCF7),
                            )),
                      ),
                    ])),
                    const TickContainer(iscolor: true),
                    Expanded(child: Container()),
                    Text(
                      tick['to']['code'],
                      style: iscolor == null
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        tick['form']['name'],
                        style: iscolor == null
                            ? TextStyle(color: Colors.white)
                            : TextStyle(color: Colors.black),
                      ),
                    ),
                    Text(
                      tick['flight_time'],
                      style: iscolor == null
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      child: Text(
                        tick['to']['name'],
                        style: iscolor == null
                            ? TextStyle(color: Colors.white)
                            : TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              color: iscolor == null
                  ? Color.fromARGB(255, 196, 105, 72)
                  : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      )),
                  Expanded(
                      child: Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: List.generate(
                        20,
                        (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: iscolor == null
                                          ? Colors.white
                                          : Colors.black)),
                            )),
                  )),
                  SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Color.fromARGB(255, 196, 105, 72)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      )),
                ],
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: iscolor == null
                    ? Color.fromARGB(255, 196, 105, 72)
                    : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(iscolor == null ? 21 : 0),
                    bottomRight: Radius.circular(iscolor == null ? 21 : 0)),
              ),
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            tick['date'],
                            style: iscolor == null
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.black),
                          ),
                          Gap(5),
                          Text(
                            "DATE",
                            style: iscolor == null
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            tick['departure_time'],
                            style: iscolor == null
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.black),
                          ),
                          Gap(5),
                          Text(
                            "Departur time",
                            style: iscolor == null
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            tick['number'].toString(),
                            style: iscolor == null
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.black),
                          ),
                          Gap(5),
                          Text(
                            "Number",
                            style: iscolor == null
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
