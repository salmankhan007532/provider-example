
import 'package:flutter/foundation.dart';

class countProvider with ChangeNotifier{

  var _count = 0;

   get count => _count;

   setcount(){
    _count++;
    notifyListeners();
  }

}