import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TickContainer extends StatelessWidget {
  final bool? iscolor;
  const TickContainer({super.key, this.iscolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 3,
              color: iscolor == null ? Colors.white : Color(0xFF8ACCF7))),
    );
  }
}
