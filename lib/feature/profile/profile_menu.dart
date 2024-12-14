import 'package:financy/feature/help_and_faqs/help_and_faqs_screen.dart';
import 'package:financy/feature/notification/notification_screen.dart';
import 'package:financy/feature/notification_setting/notification_settings_screen.dart';
import 'package:financy/feature/profile/profile_screen.dart';
import 'package:financy/feature/security/security_screen.dart';
import 'package:financy/feature/signin/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/app_colors.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildMenuItem(context, 'assets/icons/user.svg', 'Edit Profile', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(),)),),
        _buildMenuItem(context, 'assets/icons/security.svg', 'Security', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityScreen(),))),
        _buildMenuItem(context, 'assets/icons/setting.svg', 'Setting', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationSettingsScreen(),))),
        _buildMenuItem(context, 'assets/icons/help.svg', 'Help', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HelpAndFaqsScreen(),))),
        _buildMenuItem(context, 'assets/icons/logout.svg', 'Logout', () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false,)),
      ],
    );
  }

  Widget _buildMenuItem(BuildContext context, String iconPath, String label, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 38),
      child: GestureDetector(
        onTap: onTap,
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
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(
                color: const Color(0xFF093030),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
