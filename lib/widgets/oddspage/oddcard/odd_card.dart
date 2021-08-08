import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropping_odds/proto/message.pb.dart';
import 'package:dropping_odds/widgets/oddspage/oddcard/cardtoprow/top_row.dart';

import '../../../constants.dart';
import 'bottom_row/bottom_row.dart';

class OddCard extends StatelessWidget {
  const OddCard({required this.odd}) : super();

  final Odd odd;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(
            bottom: Constants.indent,
            left: Constants.indent,
            right: Constants.indent),
        child: Container(
          padding: EdgeInsets.all(Constants.indent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardTopRow(
                  sport: odd.game.sport, d: odd.game.date, t: odd.game.time),
              CardBottomRow(
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
