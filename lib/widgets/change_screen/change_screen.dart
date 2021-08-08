import 'package:flutter/material.dart';

class ChangeScreen extends StatelessWidget {
  final String name, whichAccount;
  final VoidCallback onTap;
  const ChangeScreen({
    required this.onTap, required this.name, required this.whichAccount
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(whichAccount),
        SizedBox(width: 10,),
        GestureDetector(
          // onTap: () { Navigator.pop(context, route.signup); },
          onTap: onTap,

          child: Text(name, style: TextStyle(color: Colors.cyan, fontSize: 20, ),),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
