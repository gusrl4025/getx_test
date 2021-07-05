import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}