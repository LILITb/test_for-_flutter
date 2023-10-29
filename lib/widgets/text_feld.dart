import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_for_work/utils/constants/colors.dart';

class AppTextFormField extends StatelessWidget {
  final String? label;
  final bool readOnly;
  final ReactiveFormFieldCallback? onTap;
  final void Function(FormControl<dynamic>)? onChanged;
  final ReactiveFormFieldCallback? onEditingComplete;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(void)? onSaved;
  final bool autocorrect;
  final FormFieldValidator<String>? validator;
  final Map<String, ValidationMessageFunction>? validationMessages;
  final String? errorText;
  final String? initialValue;
  late String? validationMessageRequired;
  late String? validationMessageEmail;
  final String? validationMessagePattern;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final String? formControlName;
  final TextInputAction? textInputAction;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? preffix;
  final Widget? preffixIcon;
  final bool autofocus;
  final bool expands;
  final bool counterText;
  final FocusNode? focusNode;
  final String? prefixText;
  AppTextFormField(
      {super.key, this.label,
      this.readOnly = false,
      this.onTap,
      this.onChanged,
      this.validationMessageRequired,
      this.validationMessageEmail,
      this.onEditingComplete,
      this.keyboardType,
      this.formControlName,
      this.onSaved,
      this.autocorrect = false,
      this.obscureText = false,
      this.validator,
      this.errorText,
      this.initialValue,
      this.controller,
      this.maxLines = 1,
      this.maxLength = 255,
      this.inputFormatters,
      this.hintText,
      this.textInputAction,
      this.suffix,
      this.suffixIcon,
      this.preffix,
      this.preffixIcon,
      this.expands = false,
      this.autofocus = false,
      this.validationMessagePattern,
      this.validationMessages,
      this.counterText = false,
      this.focusNode,
      this.prefixText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 80,
      child: ReactiveTextField(
        onChanged: onChanged,
        readOnly: readOnly,
        validationMessages: validationMessages,
        expands: expands,
        autofocus: autofocus,
        textInputAction: textInputAction,
        focusNode: focusNode,
        maxLines: maxLines,
        maxLength: maxLength,
        controller: controller,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        obscureText: obscureText,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        autocorrect: autocorrect,
        formControlName: formControlName,
        decoration: InputDecoration(
          prefixIcon: preffixIcon,
          prefixIconColor: AppColors.greyLabel,
          prefixIconConstraints: const BoxConstraints(maxHeight: 45, maxWidth: 60.0,minWidth: 40),
          prefixText: prefixText ?? null,
          counterText: counterText == true ? '' : null,
          contentPadding: const EdgeInsets.all(12),
          border: const OutlineInputBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.greyLabel),
          labelText: label,
          labelStyle: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.greyLabel),
             enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyBorder),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(204, 207, 211, 1)),
          ),
        ),
      ),
    );
  }
}
