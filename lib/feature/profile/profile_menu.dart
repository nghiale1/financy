import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/app_colors.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildMenuItem(context, 'assets/icons/user.svg', 'Edit Profile'),
        _buildMenuItem(context, 'assets/icons/security.svg', 'Security'),
        _buildMenuItem(context, 'assets/icons/setting.svg', 'Setting'),
        _buildMenuItem(context, 'assets/icons/help.svg', 'Help'),
        _buildMenuItem(context, 'assets/icons/logout.svg', 'Logout'),
      ],
    );
  }

  Widget _buildMenuItem(BuildContext context, String iconPath, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 38),
      child: Row(
        children: [
          Container(
            width: 57,
            height: 53,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.secondaryColor,
            ),
            child: SvgPicture.asset(
              iconPath,
              width: 57,
              height: 53,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 16,),
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: const Color(0xFF093030),
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
