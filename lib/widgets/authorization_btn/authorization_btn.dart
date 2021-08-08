import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthorizationBtn extends StatelessWidget {
  AuthorizationBtn({required this.onPressed, required this.name});
  final VoidCallback onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(name),
        ));
  }
}
