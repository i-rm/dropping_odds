import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropping_odds/route/route.dart' as route;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.odds,
      title: 'Dropping Odds',
    );
  }
}



