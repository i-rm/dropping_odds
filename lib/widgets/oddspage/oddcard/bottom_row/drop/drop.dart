import 'package:dropping_odds/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Drop extends StatelessWidget {
  const Drop({
    required this.drop,required this.noted,
  }) : super();

  final String drop;
  final bool noted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0, right: 1.0),
      child: Text(
        "Drop: " + drop + "%",
        style: TextStyle(
            color: noted ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: Constants.eventFontSize),
      ),
    );
  }
}
