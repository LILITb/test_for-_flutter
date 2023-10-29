import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_for_work/utils/constants/colors.dart';
import 'package:test_for_work/widgets/text_feld.dart';

import '../utils/constants/button_style.dart';
import '../widgets/search_select_field.dart';

class AddSendlerdetails extends StatefulWidget {
  const AddSendlerdetails({Key? key}) : super(key: key);

  @override
  State<AddSendlerdetails> createState() => _AddSendlerdetailsState();
}

class _AddSendlerdetailsState extends State<AddSendlerdetails> {
  final sendlerForm = FormGroup({
    'search': FormControl<String>(
      validators: [],
    )
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20),
        child: (Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Sender details',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    style: disableButton,
                    onPressed: null,
                    child: const Text('Add address'),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  style: activeButton,
                  onPressed: () {Navigator.pushNamed(context, '/');},
                  child: const Text('Select address'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ReactiveForm(
              formGroup: sendlerForm,
              child: Column(children: [
                AppTextFormField(
                  preffixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  maxLength: null,
                  formControlName: 'search',
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin:const EdgeInsets.symmetric(horizontal: 20),
                          width: 271,
                          height: 40,
                          child:const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Denilev Egor',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              Text('Belarus, Minsk, Derzhinskogo 3b, 80100',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14))
                            ],
                          ),
                        ),
                        Center(child: IconButton(onPressed: (){},icon: Image.asset(
                          'assets/icons/edit.png',
                        ),),)
                      ],
                    ),
                  ),
                )
              ]))
        ])));
  }
}
