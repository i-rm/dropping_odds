import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding match(String _match) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FittedBox(
      fit: BoxFit.contain,
      child: Text(_match,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
    ),
  );
}