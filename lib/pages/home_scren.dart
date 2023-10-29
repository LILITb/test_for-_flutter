import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_for_work/utils/constants/colors.dart';
import 'package:test_for_work/pages/step_one_view.dart';

import 'add_address.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          shape: const Border(
              bottom: BorderSide(color: AppColors.greyBorder, width: 0.5)),
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined,
                color: AppColors.black),
          ),
          title: Text(
            'Ordering',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColors.black),
          ),
        ),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child:
             const StepOneView(),
            ),
          );
        }));
  }
}
