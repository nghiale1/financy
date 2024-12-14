import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class ReportSelector extends StatelessWidget {
  const ReportSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Report',
          style: TextStyle(
            color: Color(0xFF093030),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 9),
        Row(
          children: [
            _buildReportOption('Income', false),
            const SizedBox(width: 53),
            _buildReportOption('Expense', true),
          ],
        ),
      ],
    );
  }

  Widget _buildReportOption(String label, bool isSelected) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryColor),
          ),
          child: isSelected
              ? Container(
            margin: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor,
            ),
          )
              : null,
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF0E3E3E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}