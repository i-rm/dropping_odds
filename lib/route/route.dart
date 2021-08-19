import 'package:dropping_odds/models/notice_model.dart';
import 'package:dropping_odds/screens/login.dart';
import 'package:dropping_odds/screens/signup.dart';
import 'package:dropping_odds/widgets/bookers/bookers_arguments.dart';
import 'package:dropping_odds/proto/service.pb.dart';
import 'package:dropping_odds/service/client_service.dart';
import 'package:dropping_odds/screens/bookers.dart';
import 'package:dropping_odds/screens/oddspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


// Route names
const String bookers="bookers";
const String odds = "odds";
const String signup = "signup";
const String login = "login";

//Controller function
Route<dynamic> controller(RouteSettings settings) {

  switch(settings.name){
    case login:
      return MaterialPageRoute(builder: (context) => Login());
    case signup:
      return MaterialPageRoute(builder: (context) => SignUp());
    case bookers:
      final args = settings.arguments as BookersArguments;
      // return MaterialPageRoute(builder: (context) => BookersPage(args: args,));
      return MaterialPageRoute(
          builder: (context) => Consumer<noticeModel>(
            builder: (context, notice, child){
              return BookersPage(args: args, notice: notice);
              },
          )
      );
    case odds:
      ClientRequest req = ClientRequest();
      return MaterialPageRoute(builder: (context) => OddsPage(ClientService(req)));
    default:
      throw("This route name does not exist");
  }
}