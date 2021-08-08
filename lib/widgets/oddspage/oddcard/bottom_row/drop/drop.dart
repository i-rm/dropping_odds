import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropping_odds/route/route.dart' as route;
import 'package:dropping_odds/widgets/bookers/bookers_arguments.dart';
import '../../../../../constants.dart';

class Drop extends StatelessWidget {
  const Drop({
    required this.drop,
    required this.sport,
    required this.home,
    required this.away,
    required this.location,
    required this.championat,
    required this.gameURL,
    required this.eventURL,
    required this.event,
    required this.outcome,
    required this.eventCond,
    required this.eventNum,
  }) : super();

  final String home, away, location, championat, drop, gameURL, sport, eventURL, event, outcome, eventCond, eventNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Constants.blueColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () { Navigator.pushNamed(context, route.bookers, arguments: BookersArguments(home, away, location, championat, drop, gameURL, sport, eventURL, event, outcome, eventCond, eventNum)); },
        child: Text(
          'Drop: $drop%',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ),
    );
  }
}
