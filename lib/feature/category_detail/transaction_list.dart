import 'package:financy/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'April',
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: AppColors.primaryColor),
                  child: const Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                  )),
            ],
          ),
        ),
        const TransactionItem(
          iconPath: 'assets/icons/salary.svg',
          title: 'Salary',
          date: '18:27 - April 30',
          amount: '\$4,000.00',
          isIncome: true,
        ),
        const TransactionItem(
          iconPath: 'assets/icons/groceries.svg',
          title: 'Groceries',
          date: '17:00 - April 24',
          amount: '-\$100.00',
          category: 'Pantry',
        ),
        const TransactionItem(
          iconPath: 'assets/icons/rent.svg',
          title: 'Rent',
          date: '8:30 - April 15',
          amount: '-\$674.40',
          category: 'Rent',
        ),
        const TransactionItem(
          iconPath: 'assets/icons/transport.svg',
          title: 'Transport',
          date: '9:30 - April 08',
          amount: '-\$4.13',
          category: 'Fuel',
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'March',
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
        const TransactionItem(
          iconPath: 'assets/icons/rent.svg',
          title: 'Food',
          date: '19:30 - March 31',
          amount: '-\$70.40',
          category: 'Dinner',
        ),
        const TransactionItem(
          iconPath: 'assets/icons/rent.svg',
          title: 'Food',
          date: '19:30 - March 31',
          amount: '-\$70.40',
          category: 'Dinner',
        ),
        const TransactionItem(
          iconPath: 'assets/icons/rent.svg',
          title: 'Food',
          date: '19:30 - March 31',
          amount: '-\$70.40',
          category: 'Dinner',
        ),

      ],
    );
  }
}
