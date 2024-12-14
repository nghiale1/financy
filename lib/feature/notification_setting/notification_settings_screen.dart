import 'package:financy/feature/common/presentation/widget/child_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constant/app_colors.dart';
import 'notification_toggle.dart';

class NotificationSettingsScreen extends ConsumerWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ChildAppBar(title: "Notification Setting"),
      body: SafeArea(
        child: Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF1FFF3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              children: const [
                NotificationToggle(label: 'General Notification'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Sound'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Sound Call'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Vibrate'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Transaction Update'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Expense Reminder'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Budget Notifications'),
                SizedBox(height: 27),
                NotificationToggle(label: 'Low Balance Alerts'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
