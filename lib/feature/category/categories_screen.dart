import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../../core/constant/app_colors.dart';
import 'balance_section.dart';
import 'category_item.dart';
import 'package:flutter_svg/svg.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildBalanceSection(),
            _buildExpenseSection(),
            _buildState(),
            SizedBox(height: 56,),
            _buildCategoriesGrid(),
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
            SizedBox(
              width: 6,
            ),
            Text(
              title,
              style: TextStyle(
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
          Expanded(
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
              child: Align(
                alignment: Alignment.center,
                child: const Text(
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
          SizedBox(
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

  Widget _buildCategoriesGrid() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 24),
        decoration: const BoxDecoration(
          color: Color(0xFFF1FFF3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(20),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: const [
            CategoryItem(icon: 'assets/icons/food.svg', label: 'Food'),
            CategoryItem(icon: 'assets/icons/transport.svg', label: 'Transport'),
            CategoryItem(icon: 'assets/icons/medicine.svg', label: 'Medicine'),
            CategoryItem(icon: 'assets/icons/groceries.svg', label: 'Groceries'),
            CategoryItem(icon: 'assets/icons/rent.svg', label: 'Rent'),
            CategoryItem(icon: 'assets/icons/gift.svg', label: 'Gifts'),
            CategoryItem(icon: 'assets/icons/saving.svg', label: 'Savings'),
            CategoryItem(icon: 'assets/icons/entertainment.svg', label: 'Entertainment'),
            CategoryItem(icon: 'assets/icons/plus.svg', label: 'More'),
          ],
        ),
      ),
    );
  }
}