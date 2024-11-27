import 'package:financy/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

import './transaction_list.dart';
import 'expenses_chart.dart';
import 'savings_section.dart';

class QuickAnalysisScreen extends StatelessWidget {
  const QuickAnalysisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SavingsSection(),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Column(
                  children: [
                    ExpensesChart(),
                    TransactionList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
