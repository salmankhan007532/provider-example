


import 'package:flutter/foundation.dart';

class MultiProviderExmaple  with ChangeNotifier{

  var _value = 0.8;

  get value => _value;

  void setValue (double val){
    _value = val;
    notifyListeners();
  }

}