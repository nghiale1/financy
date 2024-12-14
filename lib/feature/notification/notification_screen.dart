import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/constant/app_colors.dart';
import '../common/presentation/widget/child_app_bar.dart';
import 'notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const ChildAppBar(title: 'Notification',),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 29),
                  children: [
                    _buildSectionTitle('Today'),
                    const NotificationItem(
                      icon: Icons.notifications,
                      title: 'Reminder!',
                      description: 'Set up your automatic savings to meet your savings goal...',
                      time: '17:00 - April 24',
                    ),
                    const Divider(color: AppColors.primaryColor, thickness: 1),
                    const NotificationItem(
                      icon: Icons.update,
                      title: 'New update',
                      description: 'Set up your automatic savings to meet your savings goal...',
                      time: '17:00 - April 24',
                    ),
                    const Divider(color: AppColors.primaryColor, thickness: 1),
                    _buildSectionTitle('Yesterday'),
                    const NotificationItem(
                      icon: Icons.receipt,
                      title: 'Transactions',
                      description: 'A new transaction has been registered',
                      additionalInfo: 'Groceries | pantry | -\$100,00',
                      time: '17:00 - April 24',
                    ),
                    const Divider(color: AppColors.primaryColor, thickness: 1),
                    const NotificationItem(
                      icon: Icons.notifications,
                      title: 'Reminder!',
                      description: 'Set up your automatic savings to meet your savings goal...',
                      time: '17:00 - April 24',
                    ),
                    const Divider(color: AppColors.primaryColor, thickness: 1),
                    _buildSectionTitle('This Weekend'),
                    const NotificationItem(
                      icon: Icons.account_balance_wallet,
                      title: 'Expense record',
                      description: 'We recommend that you be more attentive to your finances.',
                      time: '17:00 - April 24',
                    ),
                    const Divider(color: AppColors.primaryColor, thickness: 1),
                    const NotificationItem(
                      icon: Icons.receipt,
                      title: 'Transactions',
                      description: 'A new transaction has been registered',
                      additionalInfo: 'Food | Dinner | -\$70,40',
                      time: '17:00 - April 24',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'League Spartan',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF052224),
        ),
      ),
    );
  }
}