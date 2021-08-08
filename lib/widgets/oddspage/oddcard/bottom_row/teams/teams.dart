import 'package:dropping_odds/constants.dart';
import 'package:flutter/cupertino.dart';

class Teams extends StatelessWidget {
  const Teams({
    required this.home,
    required this.away,
  }) : super();

  final String home, away;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0, right: 1.0),
        child: Text(
            '$home - $away',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: Constants.homeAwayFontSize),
            overflow: TextOverflow.ellipsis,
          ),
      ),
    );
  }
}
