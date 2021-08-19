import 'dart:core';
import 'dart:io';

import 'package:dropping_odds/models/notice_model.dart';
import 'package:dropping_odds/widgets/bookers/bookers_arguments.dart';
import 'package:dropping_odds/widgets/bookers/bottom/bottom.dart';
import 'package:dropping_odds/widgets/bookers/match/match.dart';
import 'package:dropping_odds/widgets/bookers/sport_champ/sport_champ.dart';
import 'package:dropping_odds/widgets/bookers/parse_response.dart' as pr;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:dropping_odds/scripts/js.dart' as js;

import '../constants.dart';
import '../utils.dart';

class BookersPage extends StatefulWidget {
  final BookersArguments args;
  final noticeModel notice;
  const BookersPage({required this.args, required this.notice}) : super();

  @override
  _BookersPageState createState() => _BookersPageState();
}

class _BookersPageState extends State<BookersPage> {
  var _url;
  late WebViewController _controller;
  pr.ParseResp _tableData = pr.ParseResp(exists: false, noodds: true, rows: []);
  bool _noOdds = true;
  bool _exists = false;
  bool isLoading = true;

    void initState() {
      super.initState();
      if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
      this._url = "https://oddsportal.com/" +
          this.widget.args.sport +
          "/" +
          this.widget.args.location +
          "/" +
          this.widget.args.championat +
          "/" +
          this.widget.args.gameURL +
          "/" +
          this.widget.args.eventURL;
    }

    void dropURL() async {
      final String url = this.widget.args.gameURL+this.widget.args.eventURL;
      Provider.of<noticeModel>(context, listen: false).removeURL(url);
      Provider.of<noticeModel>(context, listen: false).removeURLFromShared_preferences(url);
    }
  void readJS() async {
    String j = await _controller.evaluateJavascript(js.js);

    pr.ParseResp p = pr.ParseResp.fromRawJson(j);
    setState(() {
      this._tableData = p;
      if (p.exists) {
        this._exists = true;
      }
      if (!p.noodds) {
        this._noOdds = false;
      }
    });
  }

  static const double _headerFont = 17.0;
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    final String _sport = "${capitalize(this.widget.args.sport)}.";
    final String _matchInfo =
        "${capitalize(this.widget.args.location)}. ${capitalizeWords(this.widget.args.championat.replaceAll("-", " "))}.";
    final String _match = "${this.widget.args.home} - ${this.widget.args.away}";
    final _eventCond = this.widget.args.eventCond.length > 0
        ? this.widget.args.eventCond + " "
        : "";
    final _eventCondLength = _eventCond.length;
    final _event =
        "${this.widget.args.event}${this.widget.args.eventNum.length > 0 ? " " + this.widget.args.eventNum : ""}";
    final _outcome = this.widget.args.outcome;

    return Scaffold(
        backgroundColor: Constants.whiteGreyColor,
        body: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Bottom(isLoading: this.isLoading, exists: this._exists, noOdds: this._noOdds, tableData: this._tableData, height: _height, outcome: _outcome),
              ],
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Padding(
                  padding: EdgeInsets.only(bottom: _height * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      sportchamp(_sport),
                      sportchamp(_matchInfo),
                      match(_match),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Constants.blueColor,
                    borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(30.0),
                        bottomRight: const Radius.circular(30.0)))),
            Container(
              width: _width * 0.85,
              height: _eventCondLength < 10 ? _height * 0.16 : _height * 0.16,
              margin:
                  EdgeInsets.only(top: _height * 0.23, left: _width * 0.075),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(
                  Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: _eventCondLength < 10
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "Event",
                                  style: TextStyle(
                                      fontSize: _headerFont,
                                      fontWeight: FontWeight.w400,
                                      color: Constants.greyColor,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                              Text(
                                _eventCond + _event,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                    color: Constants.blackColor,
                                    textBaseline: TextBaseline.ideographic),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Outcome",
                                    style: TextStyle(
                                        fontSize: _headerFont,
                                        color: Constants.greyColor,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                              ),
                              Text(
                                _outcome,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25.0,
                                    color: Constants.blackColor),
                              ),
                            ],
                          )
                        ])
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // width:
                                  //     MediaQuery.of(context).size.width - 30.0,
                                  child: Text(
                                    _eventCond,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w600,
                                        color: Constants.blackColor,
                                        textBaseline: TextBaseline.ideographic),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // width:
                                  // MediaQuery.of(context).size.width - 30.0,
                                  child: Text(
                                    _event,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w600,
                                        color: Constants.blackColor,
                                        textBaseline: TextBaseline.ideographic),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10.0, top: 10.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Outcome ",
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w600,
                                          color: Constants.greyColor,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Container(
                                    padding: EdgeInsets.only(top: 10.0),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      _outcome,
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 25.0,
                                          color: Constants.blackColor),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                // Add AppBar here only
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
            ),
            Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 0,
                  height: 0,
                  child: WebView(
                    initialUrl: this._url,
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (controller) {
                      _controller = controller;
                    },
                    onProgress: (int progress) {
                      dropURL();
                      print("webview is loading (progress: $progress%)");
                    },
                    onPageStarted: (String url) {
                      print('Page started loading: $url');
                    },
                    onPageFinished: (String url) {
                      readJS();
                      setState(() {
                        isLoading = false;
                      });

                      print('Page finished loading: $url');
                    },
                  ),
                );
              },
            ),
          ],
        ));
  }
}
