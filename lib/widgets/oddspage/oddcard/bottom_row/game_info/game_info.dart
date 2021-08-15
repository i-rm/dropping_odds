import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({
    required this.location,
    required this.championate,
    required this.noted,
  }) : super();

  final String location, championate;
  final bool noted;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${location.toUpperCase().replaceAll("-", " ")}. ${championate.toUpperCase().replaceAll("-", " ")}',
      overflow: TextOverflow.fade,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: noted ? Colors.white : Constants.greyColor,
          fontSize: 10.0),
    );
  }
}
