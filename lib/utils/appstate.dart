import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int _activepage = 0;

  int get activepage => _activepage;

  set setActivePage(int actve) {
    _activepage = actve;

    notifyListeners();
  }
}
