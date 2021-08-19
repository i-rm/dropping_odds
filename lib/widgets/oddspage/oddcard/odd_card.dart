import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropping_odds/proto/message.pb.dart';
import 'package:dropping_odds/widgets/oddspage/oddcard/cardtoprow/top_row.dart';

import '../../../constants.dart';
import 'bottom_row/bottom_row.dart';

class OddCard extends StatelessWidget {
  const OddCard({required this.odd, required this.noted}) : super();

  final Odd odd;
  final bool noted;

  @override
  Widget build(BuildContext context) {
    // print(odd.game.url+odd.event.url);
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),

        margin: EdgeInsets.only(
            bottom: Constants.indent,
            left: Constants.indent,
            right: Constants.indent),
        child: Container(
          decoration: noted ? BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF36CF7E),
                const Color(0xFF5619B9),
              ],
              // colors: [
              //   const Color(0xFFCC1134),
              //   const Color(0xFF5F05D7),
              // ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(5),
          ) : BoxDecoration(),
          padding: EdgeInsets.all(Constants.indent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardTopRow(
                  sport: odd.game.sport, d: odd.game.date, t: odd.game.time),
              CardBottomRow(
                noted: noted,
                home: odd.game.homeTeam,
                away: odd.game.awayTeam,
                location: odd.game.location,
                championat: odd.game.championat,
                drop: odd.event.drop,
                sport: odd.game.sport,
                gameURL:odd.game.url,
                eventURL: odd.event.url,
                event: odd.event.event,
                outcome:odd.event.outcome,
                eventCond: odd.event.eventCond,
                eventNum: odd.event.eventNum,
                coef: odd.event.outcomeCoefficient,
              ),
            ],
          ),
        ));
  }
}
