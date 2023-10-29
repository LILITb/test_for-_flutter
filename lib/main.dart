import 'package:flutter/material.dart';
import 'package:test_for_work/pages/add_address.dart';
import 'package:test_for_work/utils/constants/colors.dart';

import 'pages/home_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "For work",
        routes: {
          '/': (context) => const HomeScreen(),
          '/addAddress': (context) => const AddAddress(),
        });
  }
}
