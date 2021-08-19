import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class noticeModel extends ChangeNotifier {
  final List<String> _urls = [];
  UnmodifiableListView<String> get urls => UnmodifiableListView(_urls);

  void addURL(String url) {
    if(_urls.contains(url)) {
      return;
    }

    _urls.add(url);
    notifyListeners();
  }

  Future<void> removeURLFromShared_preferences(String url) async {
    final prefs = await SharedPreferences.getInstance();
    final urls = prefs.getString('urls') ?? 0;
    final urlsArr = urls.toString().split("<=>");
    final urlsArrWithoutURL = urlsArr.where((element) => element != url);
    prefs.setString('urls', urlsArrWithoutURL.join("<=>"));
  }

  void removeURL(String url) {
    print("Remove " + url);
    _urls.removeWhere((element) => element == url);
    notifyListeners();
  }
}
