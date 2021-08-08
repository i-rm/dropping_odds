import 'package:dropping_odds/constants.dart';
import 'package:flutter/cupertino.dart';


class Coef extends StatelessWidget {
  const Coef({
    required this.coef,
  }) : super();

  final String coef;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0, right: 1.0),
      child: Text(
        "Coef: " + coef,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Constants.eventFontSize),
      ),
    );
  }
}
