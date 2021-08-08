import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  final bool obserText;
  final Function validator;
  final VoidCallback onTap;
  final Function onChanged;
  final String name;
  const PasswordTextFormField({required this.onChanged,required this.obserText, required this.validator, required this.onTap, required this.name }) : super();

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obserText,
      validator: (value) => value == null || value.isEmpty ? "" : validator(value),
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Password",
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(obserText ? Icons.visibility : Icons.visibility_off, color: Colors.black,),
        ),
        hintStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
