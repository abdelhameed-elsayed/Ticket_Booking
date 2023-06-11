import 'package:e_comers_app_1/screens/bottom.dart';
import 'package:e_comers_app_1/utilse/app_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.amber),
        home: const Bottom_Bar());
  }
}
