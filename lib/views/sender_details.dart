import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_for_work/utils/constants/button_style.dart';
import '../utils/constants/colors.dart';
import '../widgets/text_feld.dart';

class SenderDetails extends StatefulWidget {
  const SenderDetails({Key? key}) : super(key: key);

  @override
  State<SenderDetails> createState() => _SenderDetailsState();
}

class _SenderDetailsState extends State<SenderDetails> {
  List<TextEditingController> _controllers = [];
  List<TextField> _fields = [];
  final registerForm = FormGroup({
    'fullName': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'email': FormControl<String>(
      validators: [
        Validators.required,
        Validators.email
      ],
    ),
    'phone': FormControl<String>(
      validators: [
        Validators.required,
        Validators.number
      ],
    ),
    'country': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'city': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'addressLine1': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'postcode': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });
  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
        child: (Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Text(
            'Sender details',
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    style: activeButton,
                    onPressed: () {Navigator.pushNamed(context, '/addAddress');},
                    child: const Text('Add address'),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  style: disableButton,
                  onPressed: null,
                  child: const Text('Select address'),
                ),
              ),
            ],
          ),
          ReactiveForm(
            formGroup: registerForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    'Full name*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  formControlName: 'fullName',
                  maxLength: null,
                  preffixIcon:const Icon(Icons.person),
                  hintText: 'Danilev Egor',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                        'Name is required',
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Email*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  formControlName: 'email',
                  preffixIcon:const Icon(Icons.email),
                  maxLength: null,
                  hintText: 'egor_zu@email.com',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                    'Email is required.',
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Phone number*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  formControlName: 'phone',
                  maxLength: null,
                  preffixIcon:const Icon(Icons.phone),
                  hintText: '+375726014690',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                    'Phone Number is required.',
                  },
                ),
                Container(color: AppColors.greyBorder,height: 0.5,margin: const EdgeInsets.only(top:20),),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    'Country*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  textInputAction: TextInputAction.next,
                  formControlName: 'country',
                  maxLength: null,
                  preffixIcon: const Icon(Icons.location_on),
                  hintText: 'Belarus',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                    'Country is required',
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'City*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  textInputAction: TextInputAction.next,
                  formControlName: 'city',
                  preffixIcon: const Icon(Icons.location_city_rounded),
                  maxLength: null,
                  hintText: 'Minsk',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                    'City is required.',
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Address line1*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  textInputAction: TextInputAction.done,
                  formControlName: 'addressLine1',
                  maxLength: null,
                  preffixIcon: Image.asset(
                    'assets/icons/Vector.png',
                  ),
                  hintText: 'Derzhinskogo 3b',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                    'Address is required.',
                  },
                ),
                InkWell(
                  onTap: () {
                    final controller = TextEditingController();
                    final field = AppTextFormField(
                      controller: controller,
                    );

                    setState(() {
                      _controllers.add(controller);
                      _fields.add(field as TextField);
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Add address line +',
                      style: TextStyle(color: AppColors.enableButton),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( bottom: 10),
                  child: Text(
                    'Postcode*',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                AppTextFormField(
                  formControlName: 'postcode',
                  maxLength: null,
                  preffixIcon: const ImageIcon(
                    AssetImage('assets/icons/post.png'),
                  ),
                  hintText: '22009',
                  validationMessages: {
                    ValidationMessage.required: (control) =>
                    'Postcode is required.',
                  },
                ),
              ],
            ),
          )
        ])));
  }
}
