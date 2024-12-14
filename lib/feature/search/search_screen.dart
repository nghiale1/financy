import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../core/constant/app_colors.dart';
import 'CategorySelector.dart';
import 'DatePicker.dart';
import 'ReportSelector.dart';
import 'TransactionItem.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('HH:mm').format(DateTime.now()),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'League Spartan',
                        ),
                      ),
                      const SizedBox(height: 49),
                      Image.asset(
                        'assets/images/icon1.png',
                        width: 21,
                        height: 18,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/icon2.png', width: 13, height: 11),
                          const SizedBox(width: 4),
                          Image.asset('assets/images/icon3.png', width: 17, height: 10),
                          const SizedBox(width: 4),
                          Image.asset('assets/images/icon4.png', width: 17, height: 9),
                        ],
                      ),
                      const SizedBox(height: 41),
                      Row(
                        children: [
                          const Text(
                            'Search',
                            style: TextStyle(
                              color: Color(0xFF093030),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Image.asset('assets/images/icon5.png', width: 30, height: 30),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const SearchBar(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 24),
                padding: const EdgeInsets.only(top: 43),
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 37),
                  children: [
                    const CategorySelector(),
                    const SizedBox(height: 30),
                    const DatePicker(),
                    const SizedBox(height: 39),
                    const ReportSelector(),
                    const SizedBox(height: 53),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(169, 40),
                      ),
                      child: const Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFF093030),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),
                    const TransactionItem(
                      title: 'Dinner',
                      date: '18:27 - April 30',
                      amount: '-26,00',
                      iconPath: 'assets/images/icon8.png',
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
}