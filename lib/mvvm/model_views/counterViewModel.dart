import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/models/conterModels.dart';

class CounterViewModel with ChangeNotifier {
  final CounterModel _counterModel = CounterModel(counter: 0);

  int get counter => _counterModel.counter;

  void increment() {
    _counterModel.counter++;
    notifyListeners();
  }

  void decrement() {
    if (_counterModel.counter > 0) _counterModel.counter--;

    notifyListeners();
  }
}
