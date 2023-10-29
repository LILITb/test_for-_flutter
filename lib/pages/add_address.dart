
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_for_work/utils/constants/colors.dart';
import 'package:test_for_work/views/add_sendler_details.dart';

import '../utils/constants/button_style.dart';
import '../views/add_recipient_address.dart';
import '../widgets/step_first.dart';
class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StepOne(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: AppColors.white,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   AddSendlerdetails(),
                   SizedBox(height: 20,),
                   AddRecipientAddress(),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: activeButton,
                  child: const Text('Next step'),
                ))
          ],
        ),
      ),
    );
  }
}