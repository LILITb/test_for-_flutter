import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:test_for_work/utils/constants/colors.dart';
import 'package:test_for_work/views/recipient_address.dart';
import 'package:test_for_work/views/sender_details.dart';

import '../utils/constants/button_style.dart';
import '../widgets/step_first.dart';


class StepOneView extends StatefulWidget {
  const StepOneView({Key? key}) : super(key: key);

  @override
  State<StepOneView> createState() => _StepOneViewState();
}

class _StepOneViewState extends State<StepOneView> {
  DateTime dates = DateTime.now();
  DateTime toDay = DateTime.now();
  DateTime? newDate;
  String startDay = DateFormat('EEE d MMM').format(DateTime.now()).toString();
  selected(BuildContext context) async {
    newDate = (await showDatePicker(
      context: context,
      initialDate: toDay,
      firstDate: DateTime.now(),
      lastDate: DateTime(2200),
    ));
    if (newDate != null) {
      setState(() {
        startDay = DateFormat('EEE d MMM').format(newDate!).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StepOne(),
        Container(
          padding: EdgeInsets.all(20),
          color: AppColors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: AppColors.white,
                child: Text(
                  'Start date',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: styleButton,
                  onPressed: () {
                    selected(context);
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month_rounded,
                          color: AppColors.greyLabel),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(startDay,
                          style: const TextStyle(color: Colors.black))
                    ],
                  )),
              const SenderDetails(),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: AppColors.white,
          width: MediaQuery.of(context).size.width,
          child:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const RecipientAddress(),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {},
              style: activeButton,
              child: const Text('Next step'),
            ))
      ],
    );
  }
}
