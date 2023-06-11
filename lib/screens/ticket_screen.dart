import 'dart:html';
import 'dart:io';

import 'package:e_comers_app_1/screens/hotel.dart';
import 'package:e_comers_app_1/screens/ticket.dart';
import 'package:e_comers_app_1/utilse/app_style.dart';
import 'package:e_comers_app_1/widgets/ticket_lable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../utilse/app_layout.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicktScreen extends StatelessWidget {
  const TicktScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 230, 228),
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(20)),
            Text(
              "Tickits",
              style: TextStyle(fontSize: 50),
            ),
            AppTicketTap(firstTap: "Upcoming", secondTap: "Privious"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(20),
              ),
              child: TicketViw(
                tick: ticketList[0],
                iscolor: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(20),
                  right: AppLayout.getHeight(16)),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flutter DB",
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Passenger",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "5221 364869",
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Passport",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: AppLayout.getHeight(24),
                        child: LayoutBuilder(
                          builder: (p0, p1) {
                            return Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  15,
                                  (index) => Text(
                                        "_",
                                        style: TextStyle(color: Colors.grey),
                                      )),
                            );
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "364738 28274478",
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Number of E-tickit",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "B2SG28",
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Boking code",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: AppLayout.getHeight(24),
                        child: LayoutBuilder(
                          builder: (p0, p1) {
                            return Flex(
                              direction: Axis.horizontal,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  15,
                                  (index) => Text(
                                        "_",
                                        style: TextStyle(color: Colors.grey),
                                      )),
                            );
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/6.png",
                                    scale: 4,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ],
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Payment method",
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$249.99",
                                style: TextStyle(
                                    fontSize: 21, color: Colors.black),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Price",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(1)),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  )),
              margin: EdgeInsets.only(left: 20, right: 16),
              padding:
                  EdgeInsets.only(left: 19, right: 15, top: 15, bottom: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data:
                      "https://github.com/abdelhameed-elsayed?tab=repositories",
                  drawText: false,
                  color: Colors.black,
                  width: double.infinity,
                  height: 70,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(20),
              ),
              child: TicketViw(
                tick: ticketList[0],
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
                border: Border.all(color: Colors.black, width: 2)),
            child: CircleAvatar(
              maxRadius: 8,
              backgroundColor: Colors.black,
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
                border: Border.all(color: Colors.black, width: 2)),
            child: CircleAvatar(
              maxRadius: 8,
              backgroundColor: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}
