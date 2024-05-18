import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


void awesomeWidgets(
    BuildContext context, DialogType dialogType, String title, String desc) {
  AwesomeDialog(
    context: context,
    dialogType: dialogType,
    animType: AnimType.rightSlide,
    title: title,
    desc: desc,
    btnOkOnPress: () {},
  ).show();
}