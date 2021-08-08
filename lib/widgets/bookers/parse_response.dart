import 'dart:convert';

class ParseResp {
  final bool exists;
  final bool noodds;
  final List<Row> rows;

  ParseResp({required this.exists, required this.noodds, required this.rows});

  factory ParseResp.fromRawJson(String str) =>
      ParseResp.fromJson(json.decode(str));

  factory ParseResp.fromJson(Map<String, dynamic> json) => ParseResp(
        exists: json["exists"],
        noodds: json["noodds"],
        rows: List<Row>.from(json["rows"].map((x) => Row.fromJson(x))),
      );
}

class Row {
  final List<Cell> cells;

  Row({required this.cells});

  factory Row.fromJson(Map<String, dynamic> json) {
    return Row(
      cells: List<Cell>.from(json["cells"].map((x) => Cell.fromJson(x))),
    );
  }
}

class Cell {
  final String text;
  final String href;
  final String uod;
  final bool deactivated;

  Cell(
      {required this.text,
      required this.href,
      required this.uod,
      required this.deactivated});

  factory Cell.fromJson(Map<String, dynamic> parsedJson) {
    return Cell(
        text: parsedJson['text'],
        href: parsedJson['href'],
        uod: parsedJson['uod'],
        deactivated: parsedJson['deactivated']);
  }
}
