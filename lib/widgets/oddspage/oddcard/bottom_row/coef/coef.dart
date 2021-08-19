import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropping_odds/route/route.dart' as route;
import 'package:dropping_odds/widgets/bookers/bookers_arguments.dart';
import '../../../../../constants.dart';
import 'coef_args.dart';

class Coef extends StatelessWidget {
  const Coef({required this.coefArgs}) : super();

  final CoefArgs coefArgs;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Constants.blueColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, route.bookers,
              arguments: BookersArguments(
                  coefArgs.home,
                  coefArgs.away,
                  coefArgs.location,
                  coefArgs.championat,
                  coefArgs.gameURL,
                  coefArgs.sport,
                  coefArgs.eventURL,
                  coefArgs.event,
                  coefArgs.outcome,
                  coefArgs.eventCond,
                  coefArgs.eventNum));
        },
        child: Text(
          'Coef: ${coefArgs.coef}',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ),
    );
  }
}
