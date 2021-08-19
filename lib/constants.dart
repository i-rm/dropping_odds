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

  List<Btn> btns = [
    Btn("All", Icons.all_inbox, 0),
    Btn("Soccer", Icons.sports_soccer_outlined, 0),
    Btn("Football", Icons.sports_football_outlined, 0),
    Btn("Basketball", Icons.sports_basketball_outlined, 0),
    Btn("Tennis", Icons.sports_tennis_outlined, 0),
    Btn("Hockey", Icons.sports_hockey_outlined, 0),
    Btn("Cricket", Icons.sports_cricket_outlined, 0),
    Btn("Baseball", Icons.sports_baseball_outlined, 0),
    Btn("Esports", Icons.sports_esports_outlined, 0),
    Btn("Handball", Icons.sports_handball_outlined, 0),
    Btn("Rugby", Icons.sports_rugby_outlined, 0),
    Btn("Badminton", Icons.access_time, 0),
    Btn("Snooker", Icons.access_time, 0),
    Btn("Volleyball", Icons.sports_volleyball_outlined, 0),
    Btn("Beach-volleyball", Icons.access_time, 0),
    Btn("Water-polo", Icons.access_time, 0),
    Btn("MMA", Icons.sports_mma_outlined, 0),
  ];
}

class Btn {
  final String name;
  final IconData icon;
  int count;
  Btn(this.name, this.icon, this.count);
}

