import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  //데이터 부분
  int count = 0;
  CounterViewModel();

  //로직
  void countUp() {
    count = count + 1;
    notifyListeners();
  }

  void countDown() {
    count = count - 1;
    notifyListeners();
  }
}
