import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBalanceItem('\$7,783.00', 'assets/images/up_arrow.png', Colors.white),
              Container(
                width: 1,
                height: 42,
                color: const Color(0xFFDFF7E2),
              ),
              _buildBalanceItem('-\$1,187.40', 'assets/images/down_arrow.png', AppColors.secondaryColor),
            ],
          ),
          const SizedBox(height: 12),
          _buildProgressBar(),
          const SizedBox(height: 10),
          _buildInfoText(),
        ],
      ),
    );
  }

  Widget _buildBalanceItem(String amount, String iconPath, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(iconPath, width: 12, height: 12),
        Text(
          amount,
          style: TextStyle(
            color: color,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    return Container(
      width: 330,
      height: 28,
      decoration: BoxDecoration(
        color: const Color(0xFF052224),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 21),
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
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFF1FFF3),
              borderRadius: BorderRadius.circular(14),
            ),
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
        ],
      ),
    );
  }

  Widget _buildInfoText() {
    return Row(
      children: [
        Image.asset('assets/images/info_icon.png', width: 12, height: 12),
        const SizedBox(width: 9),
        const Expanded(
          child: Text(
            '30% of your expenses, looks good.',
            style: TextStyle(
              color: Color(0xFF052224),
              fontSize: 15,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    );
  }
}