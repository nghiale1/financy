import 'package:financy/feature/transaction/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constant/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBalanceSection(),
            _buildExpenseSection(),
            _buildState(),
            _buildSavingsGoalSection(),
            _buildTransactionList(),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildBalanceItem('assets/icons/income.svg', 'Total Balance',
              '\$7,783.00', Colors.white),
          Container(
            width: 1,
            height: 42,
            color: const Color(0xFFDFF7E2),
          ),
          _buildBalanceItem('assets/icons/expense.svg', 'Total Expense',
              '-\$1,187.40', AppColors.secondaryColor),
        ],
      ),
    );
  }

  Widget _buildBalanceItem(
      String iconPath, String title, String amount, Color textColor) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(iconPath, width: 12, height: 12),
            const SizedBox(
              width: 6,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          amount,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }

  Widget _buildExpenseSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF052224),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '30%',
                style: TextStyle(
                  color: Color(0xFFF1FFF3),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.only(left: 33, top: 6, bottom: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFF1FFF3),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  '\$20,000.00',
                  style: TextStyle(
                    color: Color(0xFF052224),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildState() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: 6,
          ),
          const Text(
            '30% of your expenses, looks good.',
            style: TextStyle(
              color: Color(0xFF052224),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSavingsGoalSection() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.symmetric(vertical: 33),
      color: const Color(0xFFF1FFF3),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 21),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(31),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xFFF1FFF3), width: 2),
                      ),
                      child: SvgPicture.asset('assets/icons/car.svg',
                          width: 36, height: 27),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Savings on goals',
                      style: TextStyle(
                        color: Color(0xFF093030),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 33,
                            child: SvgPicture.asset('assets/icons/salary.svg',
                                width: 33, height: 33)),
                        const SizedBox(width: 11),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Revenue Last Week',
                              style: TextStyle(
                                color: Color(0xFF052224),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              '\$4,000.00',
                              style: TextStyle(
                                color: Color(0xFF052224),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        SizedBox(
                            width: 33,
                            child: SvgPicture.asset('assets/icons/food.svg',
                                width: 33, height: 33)),
                        const SizedBox(width: 11),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Food Last Week',
                              style: TextStyle(
                                color: Color(0xFF052224),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              '-\$100.00',
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 26),
          _buildTimeframeSelector(),
        ],
      ),
    );
  }

  Widget _buildTimeframeSelector() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.thirdColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTimeframeButton('Daily', false),
          _buildTimeframeButton('Weekly', false),
          _buildTimeframeButton('Monthly', true),
        ],
      ),
    );
  }

  Widget _buildTimeframeButton(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : const Color(0xFFDFF7E2),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF052224),
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }

  Widget _buildTransactionList() {
    return const Column(
      children: [
        SizedBox(height: 12,),
        TransactionItem(
          iconPath: 'assets/icons/salary.svg',
          title: 'Salary',
          date: '18:27 - April 30',
          amount: '\$4,000.00',
          isIncome: true,
        ),
        TransactionItem(
          iconPath: 'assets/icons/groceries.svg',
          title: 'Groceries',
          date: '17:00 - April 30',
          amount: '-\$100.00',
          isIncome: false,
        ),
        TransactionItem(
          iconPath: 'assets/icons/rent.svg',
          title: 'Rent',
          date: '8:30 - April 30',
          amount: '-\$674.40',
          isIncome: true,
        ),
      ],
    );
  }
}
