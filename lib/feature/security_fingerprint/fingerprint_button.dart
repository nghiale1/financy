import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';
import 'package:flutter_svg/svg.dart';
class FingerprintButton extends StatelessWidget {
  const FingerprintButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195,
      height: 195,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/finger.svg',
          width: 117,
          height: 122,
          color: const Color(0xFFE9F6FE),
        ),
      ),
    );
  }
}