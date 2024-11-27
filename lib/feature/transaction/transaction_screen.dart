import 'package:financy/feature/common/presentation/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';
import 'balance_section.dart';
import 'transaction_list.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BalanceSection(),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const TransactionList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
