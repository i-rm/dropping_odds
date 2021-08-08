import 'package:flutter/cupertino.dart';

Expanded message(String mes) {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Text(mes),
        ),
      ],
    ),
  );
}
