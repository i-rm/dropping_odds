import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class Sport extends StatelessWidget {
  const Sport({
    required this.sport,
  }) : super();

  final String sport;

  @override
  Widget build(BuildContext context) {
    String _sport = sport;
    if(sport.contains("american-football")){
      _sport = "A. football";
    } else if (sport == "rugby-league"){
      _sport = "Rugby L.";
    } else if (sport == "rugby-union") {
      _sport = "Rugby U.";
    } else if (sport == "water-polo") {
      _sport = "Water polo";
    } else if (sport == "beach-volleyball") {
      _sport = "Beach Voll.";
    } else if (sport == "mma") {
      _sport = "MMA";
    }
    return Container(
      width: Constants.sportWidth,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Constants.bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        '${_sport[0].toUpperCase()}${_sport.substring(1)}',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
