import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/app_colors.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
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
          const SizedBox(height: 12),
          _buildExpenseSection(),
          const SizedBox(height: 10),
          _buildState(),
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
      margin: const EdgeInsets.symmetric(vertical: 12),
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
              child: const Text(
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
    return Row(
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
    );
  }
}
