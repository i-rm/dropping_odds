import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropping_odds/proto/message.pb.dart';
import 'package:dropping_odds/widgets/oddspage/header/header.dart';
import 'package:flutter/material.dart';

import 'package:dropping_odds/widgets/oddspage/oddcard/odd_card.dart';
import '../../constants.dart';

class OddsList extends StatefulWidget {
  const OddsList({
    required this.odds,
  }) : super();

  final List<Odd> odds;

  @override
  _OddsListState createState() => _OddsListState();
}

class _OddsListState extends State<OddsList> {
  // Filter for Header
  Filter _filter = Filter("All", 1.1, 20, false);
  // Length of  rendered odds (without noted)
  int _length = 0;
  // Buttons for the Header
  List<Btn> _btns = Constants().btns;
  // List of notificated game.url + event.url
  List<String> _urls = [];
  // List of notificated odds
  List<Odd> _notedOdds = [];

  // For Header to change filter settings
  void callback(Filter filter) {
    setState(() {
      this._filter = filter;
      countSports();
    });
  }

  //For Coef to delete odd and url from relative lists after clicking Coef
  void deleteNotedCallBackForCoef(String url){
    setState(() {
      for(var n in _notedOdds) print((n.game.url+n.event.url) == url);
      _notedOdds.removeWhere((element) => (element.game.url+element.event.url) == url);
      _urls.removeWhere((element) => element == url);
    });
  }

  // Counts how many every sport has presented events
  void countSports() {

    for (var b in _btns) {
      b.count = 0;
      if (b.name == "All") {
        b.count = widget.odds.length;
      }
    }
    for (var odd in widget.odds) {
      for (var sp in _btns) {
        if (odd.game.sport == sp.name.toLowerCase()) {
          sp.count++;
        }
      }
    }
  }
  late FirebaseMessaging messaging;
  @override
  void initState(){
    super.initState();
    countSports();
    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value) => print(value));

    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      //
      setState(() {
        if(_urls.contains(event.data["url"])) _urls.removeWhere((element) => element == event.data["url"]);
        _urls.insert(0, event.data["url"]);
      });
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Notification"),
              content: Text(event.notification!.body!),
              actions: [
                TextButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked! ${message.data['url']}');
      setState(() {
        if(_urls.contains(message.data["url"])) _urls.removeWhere((element) => element == message.data["url"]);
        _urls.insert(0, message.data["url"]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Odd>  _odds = widget.odds
          .where((element) =>
              (((_filter.sport == "All") || (element.game.sport == _filter.sport.toLowerCase())) &&
                  (double.parse(element.event.outcomeCoefficient) >=
                      this._filter.odds) &&
                  (int.parse(element.event.drop) >= this._filter.drop)))
          .toList();
    for (var n = 0; n < _urls.length; n++) {
      var i = _odds.indexWhere((note) => (note.game.url+note.event.url) == _urls[n]);
      if (i != -1){
        String _url = _urls[n];
        _notedOdds.removeWhere((element) => (element.game.url+element.event.url) == _url);
        _notedOdds.add(_odds[i]);
      }
    }


    this._length = _odds.length;

    return Center(
      child: ListView(
        children: [
          Header(this.callback, this._filter, this._length, this._btns),
          for (var notedOdd in _notedOdds) OddCard(odd: notedOdd, noted: true, callback: this.deleteNotedCallBackForCoef,),
          for (var odd in _odds) OddCard(odd: odd, noted: false, callback: this.deleteNotedCallBackForCoef)
        ],
      ),
    );
  }
}
