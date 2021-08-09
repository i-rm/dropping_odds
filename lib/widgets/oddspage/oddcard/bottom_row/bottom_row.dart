import 'package:dropping_odds/widgets/oddspage/oddcard/bottom_row/coef/coef_args.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropping_odds/widgets/oddspage/oddcard/bottom_row/teams/teams.dart';
import 'package:dropping_odds/widgets/oddspage/oddcard/bottom_row/coef/coef.dart';

import 'drop/drop.dart';
import 'game_info/game_info.dart';

class CardBottomRow extends StatelessWidget {
  const CardBottomRow(
      {
      required this.home,
      required this.away,
      required this.location,
      required this.championat,
      required this.drop,
        required this.gameURL,
        required this.sport,
        required this.eventURL,
        required this.event,
        required this.outcome,
        required this.eventCond,
        required this.eventNum,
        required this.coef,
      })
      : super();

  final String home, away, location, championat, drop, gameURL, sport, eventURL, event, outcome, eventCond, eventNum, coef;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Teams(home: home, away: away),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Drop(
                      drop: drop,
                    ),
                    GameInfo(
                      location: location,
                      championate: championat,
                    ),

                  ]),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Coef(coefArgs: CoefArgs(coef: coef,sport: sport,home: home,away: away,location:location,championat:championat,gameURL:gameURL, eventURL:eventURL,event:event,outcome:outcome,eventCond:eventCond,eventNum:eventNum)),
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
