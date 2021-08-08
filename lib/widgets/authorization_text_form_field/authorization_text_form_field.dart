import 'package:flutter/material.dart';

class AuthorizationTextFormField extends StatelessWidget {
  final Function validator;
  final Function onChanged;
  final String name;
  const AuthorizationTextFormField({required this.onChanged, required this.validator, required this.name }) : super();

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value) => value == null || value.isEmpty ? "" : validator(value),
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: name,
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
