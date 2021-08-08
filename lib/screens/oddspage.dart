import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dropping_odds/constants.dart';
import 'package:dropping_odds/proto/message.pb.dart';
import 'package:dropping_odds/proto/service.pb.dart';
import 'package:dropping_odds/service/client_service.dart';
import 'package:dropping_odds/widgets/oddspage/odds_list.dart';


class OddsPage extends StatefulWidget {
  final ClientService service;
  OddsPage(this.service);

  @override
  _OddsPageState createState() => _OddsPageState();
}

class _OddsPageState extends State<OddsPage> {
  TextEditingController? controller;
  ClientRequest req = ClientRequest();
  List<Odd> odds=[];

  @override
  void initState() {
    super.initState();
    odds = [];
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColor,
      body: Center(
          child: Column(
            children: <Widget>[
              Flexible(
                  child: StreamBuilder<ClientResponse>(
                stream: widget.service.recieveRequest(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  odds = snapshot.data!.odds;
                  odds.sort((b, a) {
                    return int.parse(a.event.drop)
                        .compareTo(int.parse(b.event.drop));
                  });
                  return OddsList(odds: odds);
                },
              )),
            ],
          ),
       ),
    );
  }
}
