import 'package:financy/feature/wallet_home/earning_section.dart';
import 'package:financy/feature/wallet_home/quick_actions.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'card_section.dart';
import 'greeting_section.dart';
import 'insights_section.dart';

class WalletHomeScreen extends StatelessWidget {
  const WalletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF201937),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 17),
            child: Column(
              children: [
                GreetingSection(),
                SizedBox(height: 27),
                CardSection(),
                SizedBox(height: 20),
                InsightsSection(),
                SizedBox(height: 31),
                QuickActions(),
                SizedBox(height: 23),
                EarningSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
