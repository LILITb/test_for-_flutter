import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:test_for_work/utils/constants/colors.dart';

class SearchFieldWidget extends StatelessWidget {
  SearchFieldWidget({
    Key? key,
    this.label,
    required this.strs,
    this.validationMessageRequired,
    this.validator,
    this.errorText,
    this.initialValue,
    this.controller,
    this.maxLines = 1,
    this.hintText,
    this.textInputAction,
    this.validationMessagePattern,
    this.readOnly = false,
    this.formControlName,
    this.searchLabel,
    this.bottomPadding,
    this.onbeforChange,
    this.onSave,
    this.itemAsString,
    this.asyncItems,
  }) : super(key: key);

  final List<String> strs;
  final String? label;
  final FormFieldValidator<String>? validator;
  final String? errorText;
  final String? initialValue;
  late String? validationMessageRequired;
  final String? validationMessagePattern;
  final TextEditingController? controller;
  final int? maxLines;
  final String? hintText;
  final String? formControlName;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final String? searchLabel;
  final double? bottomPadding;
  final void Function(String?)? onSave;
  final Future<bool?> Function(String?, String?)? onbeforChange;
  final String Function(String?)? itemAsString;
  final Future<List<String>> Function(String?)? asyncItems;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
            padding: EdgeInsets.only(bottom: bottomPadding!),
            child: ReactiveDropdownSearch<String, String>(
              formControlName: formControlName,

              onBeforeChange: onbeforChange,
              validationMessages: {
                ValidationMessage.required: (control) =>
                validationMessageRequired!
              },
              itemAsString: itemAsString,
              onSaved: onSave,
              asyncItems: asyncItems,
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(9),
                  border: const OutlineInputBorder(),
                  labelText: label,
                  labelStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(137, 129, 155, 1)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(204, 207, 211, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(204, 207, 211, 1)),
                  ),
                ),
              ),
              popupProps: PopupProps.menu(
                showSearchBox: true,
                showSelectedItems: true,
                constraints: const BoxConstraints(minHeight: 8, maxHeight: 200),
                menuProps: const MenuProps(
                  elevation: 0,
                ),
                searchFieldProps: TextFieldProps(
                  enableInteractiveSelection: true,
                  enableSuggestions: true,
                  enabled: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(9),
                    // border: const OutlineInputBorder(),
                    labelText: searchLabel,
                    labelStyle:const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey1),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: AppColors.greyBorder),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color.fromRGBO(204, 207, 211, 1)),
                    ),
                  ),
                ),
              ),
              items: strs,
              // showClearButton: true,
            )));
  }
}
