import 'package:flutter/cupertino.dart';

import '../../../../../constants.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({
    required this.location,
    required this.championate,
  }) : super();

  final String location, championate;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${location.toUpperCase().replaceAll("-", " ")}. ${championate.toUpperCase().replaceAll("-", " ")}',
      overflow: TextOverflow.fade,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Constants.greyColor,
          fontSize: 10.0),
    );
  }
}
