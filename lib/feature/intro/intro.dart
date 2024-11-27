import 'package:financy/feature/intro/status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'create_account_link.dart';
import 'get_started_button.dart';
import 'investment_image.dart';
import 'investment_title.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: const Color(0xFF201937),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                StatusBar(),
                SizedBox(height: 29),
                InvestmentImage(),
                SizedBox(height: 44),
                InvestmentTitle(),
                SizedBox(height: 18),
                GetStartedButton(),
                SizedBox(height: 44),
                CreateAccountLink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}