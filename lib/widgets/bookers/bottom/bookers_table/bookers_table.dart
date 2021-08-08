import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropping_odds/widgets/bookers/parse_response.dart' as parresp;
import 'package:dropping_odds/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Expanded bookersTable(parresp.ParseResp _tableData, double height, String outcome) {
  int numRows = _tableData.rows.length;
  int numCols = _tableData.rows[0].cells.length;

  Future<void> _launchInBrowser(String url) async {
    if (!url.contains('http')) url = 'https://$url';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        // headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  List<TableRow> rows = [];
  for (var i = 0; i < numRows; i += 1) {
    List<TableRowInkWell> triwList = List.filled(numCols, TableRowInkWell());
    for (var j = 0; j < numCols; j += 1) {
      var c = _tableData.rows[i].cells[j];
      String text = c.text;
      String href = j == 0 ? _tableData.rows[i].cells[j+1].href : c.href;
      print(href);
      String uod = c.uod;
      Icon arrow = Icon(
        Icons.arrow_drop_up,
        color: Colors.white.withOpacity(1.0),
      );

    if (uod == "u") {
        arrow = Icon(
          Icons.arrow_drop_up,
          color: Constants.blueColor,
        );
      } else if (uod == "d") {
        arrow = Icon(
          Icons.arrow_drop_down,
          color: Constants.redColor,
        );
      } else if (uod == "ud") {
        arrow = Icon(
          Icons.arrow_drop_up,
          color: Constants.greyColor,
        );
      } else if (uod == "dd") {
        arrow = Icon(
          Icons.arrow_drop_down,
          color: Constants.greyColor,
        );
      }

      bool deactivated = c.deactivated;

      triwList[j] = TableRowInkWell(
        onTap: () {
          if (href.length > 0) {
            _launchInBrowser(_tableData.rows[i].cells[0].text + "/" + href);
          }
        },
        child: Container(
           decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Constants.tableBorderColor),
            ),
            color: Constants.whiteGreyColor,
          ),

          margin: EdgeInsets.only(top: i == 0 ? height*0.45 : 0.0),
          padding: i == 0
              ? const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0)
              : const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Row(
              children: [
                arrow,
                Padding(
                  padding: const EdgeInsets.only(right: 3.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      decoration: deactivated
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      fontWeight:
                          j == 0 && i > 0 ? FontWeight.bold : FontWeight.normal,
                      color: text == outcome ?
                      Constants.blueColor :
                      href.length == 0 && j > 0 && i > 0
                          ? Constants.greyColor
                          : Constants.blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    rows.add(TableRow(
        children: triwList));
  }

  return Expanded(
    child: Container(
      // margin: EdgeInsets.only(top: 150.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          columnWidths: numCols == 5
              ? {
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(1),
                }
              : numCols == 4
                  ? {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(1),
                    }
                  : numCols == 3
                      ? {
                          0: FlexColumnWidth(2),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1),
                        }
                      : {},

          children: <TableRow>[for (var row in rows) row],
        ),
      ),
    ),
  );
}

