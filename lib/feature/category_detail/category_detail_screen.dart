import 'package:financy/core/constant/app_colors.dart';
import 'package:financy/feature/add_expense/add_expense_screen.dart';
import 'package:financy/feature/common/presentation/widget/child_app_bar.dart';
import 'package:flutter/material.dart';

import '../add_expense/custom_button.dart';
import '../category/balance_section.dart';
import 'transaction_list.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: const ChildAppBar(title: "Food"),
      body: SafeArea(
        child: Column(
          children: [
            const BalanceSection(),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const TransactionList(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFF1FFF3)),
              child: SizedBox(
                child: CustomButton(
                  text: 'Add Expenses',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddExpenseScreen(),
                      )
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
