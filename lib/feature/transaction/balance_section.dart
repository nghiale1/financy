import 'package:financy/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFF1FFF3),
            borderRadius: BorderRadius.circular(14),
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Text(
                'Total Balance',
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '\$7,783.00',
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(children: [
                  SvgPicture.asset('assets/icons/expense.svg',
                      width: 25, height: 25),
                  const Text(
                    'Expense',
                    style: TextStyle(
                      color: Color(0xFF093030),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Text(
                    '-\$1,187.40',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ])),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(children: [
                  SvgPicture.asset('assets/icons/expense.svg',
                      width: 25, height: 25, color: AppColors.secondaryColor,),
                  const Text(
                    'Expense',
                    style: TextStyle(
                      color: Color(0xFF093030),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Text(
                    '-\$1,187.40',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ])),
          ],
        ),
      ],
    );
  }
}
