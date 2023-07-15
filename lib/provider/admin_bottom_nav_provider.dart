import 'package:flutter/foundation.dart';

class AdminBottomNavigationProvider with ChangeNotifier
{

  int _index = 0;

  int get getIndex => _index;

  void setIndex(int index)
  {
    _index = index;
    notifyListeners();
  }

}