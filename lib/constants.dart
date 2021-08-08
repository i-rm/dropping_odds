import 'package:flutter/material.dart';

class Constants {
  static const bgColor = Color.fromRGBO(236, 235, 236, 1.0);
  static const greyColor = Color.fromRGBO(158, 158, 158, 1.0);
  static const lightGreyColor = Color.fromRGBO(221, 220, 221, 1.0);
  static const whiteGreyColor = Color.fromRGBO(251, 251, 251, 1);
  static const blackColor = Color.fromRGBO(66, 66, 66, 1.0);
  static const redColor = Color.fromRGBO(168, 82, 109, 1);
  static const blueColor = Color.fromRGBO(18, 155, 240, 1);
  static const tableBorderColor = Color.fromRGBO(244, 244, 244, 1);
  static const indent = 15.0;
  static const btnDiam = 50.0;
  static const sportWidth = 70.0;
  static const teamsWidt = 60.0;
  static const homeAwayFontSize = 15.0;
  static const eventFontSize = 12.0;
}

class Btn {
  final String name;
  final IconData icon;
  int count;
  Btn(this.name, this.icon, this.count);
}