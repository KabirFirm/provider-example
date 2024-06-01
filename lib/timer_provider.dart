import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  int timerValue;

  TimerProvider({
    this.timerValue = 3,
  });

  void setTimer(int newTimer) {
    timerValue = newTimer;
    notifyListeners();// To notify all the listeners that the value may change
  }

  int getTimer() => timerValue;
}