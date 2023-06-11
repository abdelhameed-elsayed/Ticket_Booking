import 'dart:js';

import 'package:e_comers_app_1/utilse/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppTicketTap extends StatelessWidget {
  final String firstTap;
  final String secondTap;
  const AppTicketTap(
      {super.key, required this.firstTap, required this.secondTap});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    return Container(
      padding: const EdgeInsets.all(3.5),
      // ignore: sort_child_properties_last
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Center(
                child: Text(
              firstTap,
              style: TextStyle(fontSize: 20),
            )),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              color: Color.fromARGB(255, 211, 208, 208),
            ),
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Center(
                child: Text(
              secondTap,
              style: TextStyle(fontSize: 20),
            )),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
    );
  }
}
