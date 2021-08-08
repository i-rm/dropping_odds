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
  Filter _filter = Filter("All", 1.1, 20);
  int _length = 0;
  List<Btn> _btns = [
    Btn("All", Icons.all_inbox, 0),
    Btn("Soccer", Icons.sports_soccer_outlined, 0),
    Btn("Football", Icons.sports_football_outlined, 0),
    Btn("Basketball", Icons.sports_basketball_outlined, 0),
    Btn("Tennis", Icons.sports_tennis_outlined, 0),
    Btn("Hockey", Icons.sports_hockey_outlined, 0),
    Btn("Cricket", Icons.sports_cricket_outlined, 0),
    Btn("Baseball", Icons.sports_baseball_outlined, 0),
    Btn("Esports", Icons.sports_esports_outlined, 0),
    Btn("Handball", Icons.sports_handball_outlined, 0),
    Btn("Rugby", Icons.sports_rugby_outlined, 0),
    Btn("Rugby-union", Icons.sports_rugby_outlined, 0),
    Btn("Badminton", Icons.access_time, 0),
    Btn("Volleyball", Icons.sports_volleyball_outlined, 0),
    Btn("Beach-volleyball", Icons.sports_volleyball_outlined, 0),
    Btn("MMA", Icons.sports_mma_outlined, 0),
  ];
  void callback(Filter filter) {
    print("Callback");
    setState(() {
      this._filter = filter;
      countSports();
    });
  }

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

  // @override
  void initState() {
    super.initState();
    countSports();
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
    // }
    this._length = _odds.length;

    return Center(
      child: ListView(
        children: [
          Header(this.callback, this._filter, this._length, this._btns),
          for (var odd in _odds) OddCard(odd: odd)
        ],
      ),
    );
  }
}
