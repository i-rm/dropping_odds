import './bookers_table/bookers_table.dart';
import 'package:dropping_odds/widgets/bookers/message/message.dart';
import 'package:dropping_odds/widgets/bookers/parse_response.dart' as pr;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../user_errors.dart';

class Bottom extends StatelessWidget {
  final bool isLoading, exists, noOdds;
  final pr.ParseResp tableData;
  final double height;
  final String outcome;
  Bottom(
      {required this.isLoading,
      required this.exists,
      required this.noOdds,
      required this.tableData,
        required this.height,
        required this.outcome,
      })
      : super();

  @override
  Widget build(BuildContext context) {
    return isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : !exists
          ? message(UserErrors.notExists)
          : noOdds
          ? message(UserErrors.noOdds)
          : bookersTable(tableData, height, outcome);
  }
}
