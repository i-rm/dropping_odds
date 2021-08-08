import 'package:flutter/cupertino.dart';
import 'package:dropping_odds/widgets/oddspage/oddcard/cardtoprow/datetime/date_time.dart';
import 'package:dropping_odds/widgets/oddspage/oddcard/cardtoprow/sport/sport.dart';

import '../../../../constants.dart';

class CardTopRow extends StatelessWidget {
  const CardTopRow({
    required this.sport,
    required this.d,
    required this.t,
  }) : super();

  final String sport, d, t;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Constants.indent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Sport(sport: sport),
          DateTime(d: d, t: t),
        ],
      ),
    );
  }
}
