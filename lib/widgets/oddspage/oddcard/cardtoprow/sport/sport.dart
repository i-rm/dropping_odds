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
    return Container(
      width: Constants.sportWidth,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Constants.bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        '${sport[0].toUpperCase()}${sport.substring(1)}',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
