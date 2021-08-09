import 'package:dropping_odds/constants.dart';
import 'package:flutter/cupertino.dart';


class Drop extends StatelessWidget {
  const Drop({
    required this.drop,
  }) : super();

  final String drop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0, right: 1.0),
      child: Text(
        "Drop: " + drop + "%",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Constants.eventFontSize),
      ),
    );
  }
}
