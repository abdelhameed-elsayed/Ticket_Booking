import 'package:e_comers_app_1/utilse/app_layout.dart';
import 'package:e_comers_app_1/utilse/app_style.dart';
import 'package:e_comers_app_1/widgets/doubletext.dart';
import 'package:e_comers_app_1/widgets/ticket_lable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearshScreen extends StatelessWidget {
  const SearshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          const Text(
            "What are \n you looking for ?",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const Gap(40),
          AppTicketTap(
            firstTap: "Airline TIckits",
            secondTap: "Hotels",
          ),
          const Gap(30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const Icon(
                  Icons.flight_takeoff_rounded,
                ),
                const Gap(10),
                Text("Departure", style: Style.textStyle),
              ],
            ),
          ),
          Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const Icon(
                  Icons.flight_land_rounded,
                ),
                const Gap(10),
                Text("Arrival", style: Style.textStyle),
              ],
            ),
          ),
          Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 21, 13, 171),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text("find tickets",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))),
          ),
          Gap(20),
          const DoubleText(bigText: "Upcoming Flights", smallText: "viwe all"),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 415,
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/5.png"),
                        ),
                      ),
                    ),
                    Text(
                      "20% discount on the early boking of the this flight . Don't miss this chance ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Column(children: [
                Stack(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                      width: size.width * 0.36,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFF3AB8B8),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount \n for survy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(15),
                            Text(
                                "Take the \nservey about \n our services \n and get \n a discount",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Positioned(
                      right: -45,
                      top: -45,
                      child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent),
                      ),
                    )
                  ],
                ),
                Gap(15),
                Container(
                  width: size.width * 0.36,
                  height: AppLayout.getHeight(200),
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)),
                  child: Column(children: [
                    Text(
                      "Take love ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Gap(10),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(text: '😘', style: TextStyle(fontSize: 27)),
                      TextSpan(text: '🤗', style: TextStyle(fontSize: 33)),
                      TextSpan(text: '😍', style: TextStyle(fontSize: 27)),
                    ])),
                  ]),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
