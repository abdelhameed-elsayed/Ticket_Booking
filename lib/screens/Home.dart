import 'package:e_comers_app_1/screens/hotel.dart';
import 'package:e_comers_app_1/screens/ticket.dart';
import 'package:e_comers_app_1/utilse/app_style.dart';
import 'package:e_comers_app_1/widgets/doubletext.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      const Gap(5),
                      Text(
                        "Booking Tickit",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/1.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(25),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF4F6Fd),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color.fromARGB(255, 123, 123, 5),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming flights",
                    style: Style.headLinStyle2,
                  ),
                  InkWell(
                      onTap: () {
                        print("medo");
                      },
                      child: Text("Viwe all", style: Style.textStyle)),
                ],
              ),
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList.map((e) => TicketViw(tick: e)).toList()),
          ),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DoubleText(
              bigText: 'Ubcoming flights',
              smallText: 'viwe all',
            ),
          ),
          Gap(25),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children:
                    hotelList.map((hotel) => Hotel(hotel: hotel)).toList(),
              ))
        ],
      ),
    );
  }
}
