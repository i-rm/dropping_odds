import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class Filter {
  String sport;
  double odds;
  int drop;
  Filter(this.sport, this.odds, this.drop);
}

class Header extends StatefulWidget {
  final Function callback;

  final int length;
  final List<Btn> btns;
  Header(this.callback, this.filter, this.length, this.btns);

  final Filter filter;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  // Filter _filter = Filter("All", 1.1, 20);


  void reset(String name) {
    widget.btns.forEach((btn) {
      if (btn.name == name) {
        this.widget.filter.sport = btn.name;
        this.widget.callback(this.widget.filter);
        return;
      }
    });
  }

  Widget _incrementDrop() {
    return Container(
      width: 35.0,
      height: 35.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: "btn1",
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35.0,
          ),
          backgroundColor: Constants.blueColor,
          onPressed: () {
            setState(() {
              this.widget.filter.drop += 1;
            });
            reset(this.widget.filter.sport);
          },
        ),
      ),
    );
  }

  Widget _decrementDrop() {
    return Container(
      width: 35.0,
      height: 35.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: "btn2",
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: Icon(
            Icons.remove,
            color: Colors.white,
            size: 35.0,
          ),
          backgroundColor: Constants.blueColor,
          onPressed: () {
            setState(() {
              this.widget.filter.drop -= 1;
              if (this.widget.filter.drop < 21) {
                this.widget.filter.drop = 20;
              }
              reset(this.widget.filter.sport);
            });
          },
        ),
      ),
    );
  }

  Widget _incrementOdds() {
    return Container(
      width: 35.0,
      height: 35.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: "btn3",
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35.0,
          ),
          backgroundColor: Constants.blueColor,
          onPressed: () {
            setState(() {
              this.widget.filter.odds += 0.1;
              reset(this.widget.filter.sport);
            });
          },
        ),
      ),
    );
  }

  Widget _decrementOdds() {
    return Container(
      width: 35.0,
      height: 35.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: "btn4",
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: Icon(
            Icons.remove,
            color: Colors.white,
            size: 35.0,
          ),
          backgroundColor: Constants.blueColor,
          onPressed: () {
            setState(() {
              this.widget.filter.odds -= 0.1;
              if (this.widget.filter.odds < 1.2) {
                this.widget.filter.odds = 1.1;
              }
              reset(this.widget.filter.sport);
            });
          },
        ),
      ),
    );
  }

  Widget _clearDrop() {
    return Container(
      width: 35.0,
      height: 35.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: "btn5",
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: Icon(
            Icons.clear,
            color: Colors.white,
            size: 35.0,
          ),
          backgroundColor: Constants.redColor,
          onPressed: () {
            setState(() {
              this.widget.filter.drop = 20;
              reset(this.widget.filter.sport);
            });
          },
        ),
      ),
    );
  }

  Widget _clearOdds() {
    return Container(
      width: 35.0,
      height: 35.0,
      child: FittedBox(
        child: FloatingActionButton(
          heroTag: "btn6",
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: Icon(
            Icons.clear,
            color: Colors.white,
            size: 35.0,
          ),
          backgroundColor: Constants.redColor,
          onPressed: () {
            setState(() {
              this.widget.filter.odds = 1.1;

              reset(this.widget.filter.sport);
            });
          },
        ),
      ),
    );
  }

  double _height = 0;

  @override
  Widget build(BuildContext context) {
    widget.btns.sort((b, a) => a.count.compareTo(b.count));
    return Column(
      children: [
        SizedBox(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.btns.map((btn) => Container(
                margin: EdgeInsets.only(left: 15.0),
                padding: EdgeInsets.all(1.0),
                child: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  height: Constants.btnDiam,
                  minWidth: Constants.btnDiam,
                  child: btn.name == "All"
                      ? Text(
                          "ALL",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      : Icon(
                          btn.icon,
                          size: 30,
                        ),
                  shape: CircleBorder(),
                  color: btn.name == widget.filter.sport
                      ? Colors.white
                      : Constants.lightGreyColor,
                  onPressed: btn.count>0 ?
                      () {
                    setState(() {
                      reset(btn.name);
                    });
                  } : null,
                ))).toList(),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: EdgeInsets.only(left: Constants.indent),
            child: Text(this.widget.filter.sport + " (" + widget.length.toString() + ")",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),

          MaterialButton(
              height: Constants.btnDiam,
              minWidth: Constants.btnDiam,
              child: Icon(
                Icons.tune_outlined,
                size: 30,
              ),
              shape: CircleBorder(),
              onPressed: () {
                setState(() {
                  _height = (_height == 0) ? 100 : 0;
                });
              }),
        ]),
        AnimatedContainer(
          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: Constants.indent),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Expanded(child: Center(child: Text("Min drop", style: TextStyle( fontSize: 20.0,fontWeight: FontWeight.w300,),))),
                  Expanded(child: Center(child: Text("Min odds", style: TextStyle( fontSize: 20.0,fontWeight: FontWeight.w300,)))),
                ],
              ),
              Row(
                children:[
                  Column(
                    children: [
                      Expanded(child: _decrementDrop()),
                      Expanded(child: _decrementOdds()),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              '${this.widget.filter.drop}',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              '${num.parse(this.widget.filter.odds.toStringAsFixed(2))}',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(child: _incrementDrop()),
                      Expanded(child: _incrementOdds()),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: [
                        Expanded(child: _clearDrop()),
                        Expanded(child: _clearOdds()),
                      ],
                    ),
                  )]
              )

            ],
          ),
          // color: Colors.red,
          duration: Duration(
            milliseconds: 150,
          ),
          height: _height,
        )
      ],
    );
  }
}
