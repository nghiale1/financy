import 'package:flutter/material.dart';

class NotificationProvider with ChangeNotifier {
  int _notificationCount = 0;

  int get notificationCount => _notificationCount;

  void increaseNotification() {
    _notificationCount++;
    notifyListeners();
  }

  void decreaseNotification() {
    if (_notificationCount > 0) {
      _notificationCount--;
      notifyListeners();
    }
  }

  void resetNotification() {
    _notificationCount = 0;
    notifyListeners();
  }
}
