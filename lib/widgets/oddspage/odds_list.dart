import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropping_odds/proto/message.pb.dart';
import 'package:dropping_odds/widgets/oddspage/header/header.dart';
import 'package:flutter/material.dart';

import 'package:dropping_odds/widgets/oddspage/oddcard/odd_card.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants.dart';
import '../../models/notice_model.dart';

class OddsList extends StatefulWidget {
  const OddsList({
    required this.odds, required this.notice,
  }) : super();

  final List<Odd> odds;
  final noticeModel notice;

  @override
  _OddsListState createState() => _OddsListState();
}

class _OddsListState extends State<OddsList> with WidgetsBindingObserver {
  // Filter for Header
  Filter _filter = Filter("All", 1.1, 20, false);
  // Length of  rendered odds (without noted)
  int _length = 0;
  // Buttons for the Header
  List<Btn> _btns = Constants().btns;


  // For Header to change filter settings
  void callback(Filter filter) {
    setState(() {
      this._filter = filter;
      countSports();
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
        if (odd.game.sport.contains(sp.name.toLowerCase())) {
          sp.count++;
        }
      }
    }
  }

  Future<void> loadURLS() async {
    final prefs = await SharedPreferences.getInstance();
    final urls = prefs.getString('urls') ?? 0;
    final urlsArr = urls.toString().split("<=>");
    urlsArr.forEach((element) {this.widget.notice.addURL(element);});
  }


  late FirebaseMessaging messaging;

  @override
  void initState(){
    super.initState();
    loadURLS();
    WidgetsBinding.instance!.addObserver(this);
    countSports();


    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value) => print(value));

    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      //
      setState(() {
        // If url exists already - drop it
        if(widget.notice.urls.contains(event.data["url"])) widget.notice.removeURL(event.data["url"]);
        //Add url to model
        widget.notice.addURL(event.data["url"]);
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
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.paused:
        print("paused state");
        break;
      case AppLifecycleState.resumed:
        final prefs = await SharedPreferences.getInstance();
        final urls = prefs.getString('urls') ?? 0;
        final urlsArr = urls.toString().split("<=>");
        urlsArr.forEach((element) {this.widget.notice.addURL(element);});
        print("resumed state");
        break;
      case AppLifecycleState.detached:
        print("detached state");
        break;
      case AppLifecycleState.inactive:
        print("inactive state");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // List of notificated odds
    List<Odd> _notedOdds = [];
    List<Odd> _odds = widget.odds
          .where((element) =>
              (((_filter.sport == "All") || (element.game.sport.contains(_filter.sport.toLowerCase()))) &&
                  (double.parse(element.event.outcomeCoefficient) >=
                      this._filter.odds) &&
                  (int.parse(element.event.drop) >= this._filter.drop)))
          .toList();
    //Loop throw model urls
    for (var n = 0; n < widget.notice.urls.length; n++) {
      // search url in odds
      var i = _odds.indexWhere((note) => (note.game.url+note.event.url) == widget.notice.urls[n]);
      // If found
      if (i != -1){
        String _url = widget.notice.urls[n];
        // Drop from notedOdds if exists
        _notedOdds.removeWhere((element) => (element.game.url+element.event.url) == _url);
        // Add to end
        _notedOdds.add(_odds[i]);
      }
    }


    this._length = _odds.length;

    return Center(

      child: ListView(
        children: [
          Header(this.callback, this._filter, this._length, this._btns),
          for (var notedOdd in _notedOdds) OddCard(odd: notedOdd, noted: true,),
          for (var odd in _odds) OddCard(odd: odd, noted: false)
        ],
      ),
    );
  }
}
