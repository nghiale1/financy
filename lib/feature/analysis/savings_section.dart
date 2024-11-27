import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/app_colors.dart';

class SavingsSection extends StatelessWidget {
  const SavingsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    const SizedBox(height: 5),
                    const Text(
                      'Savings on goals',
                      style: TextStyle(
                        color: Color(0xFF093030),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 1.5,
                  width: 20,
                  color: Color(0xFFF1FFF3),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/salary.svg',
                            color: Color(0xFF093030),
                            width: 36,
                            height: 36,
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Revenue Last Week',
                                style: TextStyle(
                                  color: Color(0xFF093030),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '\$4,000.00',
                                style: TextStyle(
                                  color: Color(0xFF093030),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(color: Color(0xFFF1FFF3), thickness: 1.5),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.fastfood,
                              color: Color(0xFF093030), size: 36),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Food Last Week',
                                style: TextStyle(
                                  color: Color(0xFF093030),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '- \$100.00',
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: 17,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
