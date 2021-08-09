import 'package:flutter/cupertino.dart';

import '../../../../constants.dart';

Padding sportchamp(String s) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: FittedBox(
      fit: BoxFit.contain,
      child: Text(
        s,
        style: TextStyle(
            color: Constants.bgColor, fontSize: 15.0),
      ),
    ),
  );
}