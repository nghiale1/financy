import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationNotifier extends StateNotifier<int> {
  NotificationNotifier() : super(0);

  void increaseNotification() {
    state++;
  }

  void decreaseNotification() {
    if (state > 0) {
      state--;
    }
  }

  void resetNotification() {
    state = 0;
  }
}

final notificationNotifier = StateNotifierProvider<NotificationNotifier, int>(
  (ref) => NotificationNotifier(),
);
