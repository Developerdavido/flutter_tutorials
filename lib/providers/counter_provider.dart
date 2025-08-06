

import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); //Update the UI with the new value
  }

  void decrement() {
    _counter--;
    notifyListeners(); //Update the UI with the new value
  }
}