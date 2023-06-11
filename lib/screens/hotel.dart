import 'package:e_comers_app_1/utilse/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("price is${hotel['price']}");
    final size = AppLayout.getsize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 95, 94, 85),
          borderRadius: BorderRadius.circular(24),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
              color: Color.fromARGB(255, 84, 81, 81),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 7, 44, 81),
              image: DecorationImage(
                  image: AssetImage("assets/${hotel['image']}"),
                  fit: BoxFit.fill),
            ),
          ),
          Gap(10),
          Text(hotel['place'],
              style: TextStyle(
                  color: Color.fromARGB(255, 237, 173, 173), fontSize: 20)),
          Gap(10),
          Text(hotel['distination'],
              style: TextStyle(
                  color: Color.fromARGB(255, 249, 247, 247), fontSize: 15)),
          Gap(10),
          Text('\$${hotel['price']}/night',
              style: TextStyle(
                  color: Color.fromARGB(255, 237, 173, 173), fontSize: 25)),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> hotelList = [
  {
    'image': '2.png',
    'place': 'Open Space',
    'distination': 'London',
    'price': 25
  },
  {
    'image': 'two.png',
    'place': 'Global will',
    'distination': 'London',
    'price': 40
  },
  {
    'image': 'three.png',
    'place': 'Tallest Building',
    'distination': 'Dubai',
    'price': 68
  }
];

List<Map<String, dynamic>> ticketList = [
  {
    'form': {'code': "NYC", 'name': "New_York"},
    'to': {'code': "LDN", 'name': "London"},
    'flight_time': '8H 30M',
    'date': "1 MAy",
    'departure_time': "08:00 AM",
    'number': 23
  },
  {
    'form': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shangahai"},
    'flight_time': '4H 20M',
    'date': "10 MAy",
    'departure_time': "09:00 AM",
    'number': 45
  }
];
