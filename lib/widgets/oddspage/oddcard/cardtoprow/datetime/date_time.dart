import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class DateTime extends StatelessWidget {
  const DateTime({required this.d, required this.t}) : super();

  final String d, t;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Starts: $d $t',
      style: TextStyle(
        fontSize: 10,
        color: d == "Today" ? Constants.redColor : Colors.grey[500],
      ),
    );
  }
}
