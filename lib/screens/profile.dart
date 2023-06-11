// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_comers_app_1/utilse/app_layout.dart';
import 'package:e_comers_app_1/utilse/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 230, 228),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                    image: const DecorationImage(
                        image: AssetImage("assets/1.png"))),
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Book Tickets",
                    style: TextStyle(fontSize: 30),
                  ),
                  Gap(AppLayout.getHeight(2)),
                  const Text(
                    "New-York",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      print("You are taped");
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                    color: Color.fromARGB(194, 34, 104, 151),
                    borderRadius: BorderRadius.circular(18)),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: Color.fromARGB(255, 53, 62, 239),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(30),
                    vertical: AppLayout.getHeight(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Color.fromARGB(194, 34, 104, 151),
                      ),
                      maxRadius: 30,
                      backgroundColor: Colors.white,
                    ),
                    Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You \'v got a new award",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "You have 95 flight in a year",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(25),
          Text(
            "Accumulated miles",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 10,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Column(children: [
              Gap(AppLayout.getHeight(15)),
              Text("192880",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Miles accrued",
                      style: TextStyle(fontSize: 17, color: Colors.grey)),
                  Text("23 May 2021",
                      style: TextStyle(fontSize: 17, color: Colors.grey)),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "23 042",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        " Miles",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Airline CO",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "Received from",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "24",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        " Miles",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "McDonal\'s",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "Received from",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "52 340",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        " Miles",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Exuma",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "Received from",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              InkWell(
                onTap: () {
                  print("Taped");
                },
                child: Text(
                  "How to get more miles",
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
