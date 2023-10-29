import 'dart:js';

import 'package:flutter/material.dart';
import 'package:test_for_work/utils/constants/colors.dart';

final ButtonStyle styleButton = ElevatedButton.styleFrom(
  side: const BorderSide(
    width: 0.5,
    color: AppColors.greyBorder,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
  shadowColor:Colors.transparent ,
  backgroundColor: Colors.white,
  textStyle: const TextStyle(
    fontSize: 14,
    color: Colors.white,
  ),
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
);

final ButtonStyle activeButton = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(36),
  ),
  maximumSize:const Size(335,52),
  shadowColor:Colors.transparent ,
  backgroundColor: AppColors.enableButton,
  textStyle: const TextStyle(
    fontSize: 14,
    color: Colors.white,
  ),
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
);
final ButtonStyle disableButton = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(36),
  ),
  shadowColor:Colors.transparent ,
  backgroundColor: AppColors.disableButton,
  textStyle: const TextStyle(
    fontSize: 14,
    color: Colors.white,
  ),
  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
);
