import 'package:dropping_odds/models/notice_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dropping_odds/constants.dart';
import 'package:dropping_odds/proto/message.pb.dart';
import 'package:dropping_odds/proto/service.pb.dart';
import 'package:dropping_odds/service/client_service.dart';
import 'package:dropping_odds/widgets/oddspage/odds_list.dart';
import 'package:provider/provider.dart';


class OddsPage extends StatefulWidget {
  final ClientService service;
  OddsPage(this.service);

  @override
  _OddsPageState createState() => _OddsPageState();
}

class _OddsPageState extends State<OddsPage> {
  ClientRequest req = ClientRequest();
  List<Odd> odds=[];

  @override
  void initState() {
    super.initState();
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
                  return Consumer<noticeModel>(
                    builder: (context, notice, child){
                      return OddsList(odds: odds, notice: notice);
                    },
                  );

                },
              )),
            ],
          ),
       ),
    );
  }
}
