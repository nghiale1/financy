import 'package:financy/feature/profile/profile_avatar.dart';
import 'package:financy/feature/profile/profile_header.dart';
import 'package:financy/feature/profile/profile_menu.dart';
import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.primaryColor,
          ),
          child: Column(
            children: [
              const ProfileAvatar(),
              const SizedBox(height: 36,),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 26),
                    Text(
                      'John Smith',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF0E3E3E),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 28),
                    const ProfileMenu(),
                    const SizedBox(height: 73),
                    // const ProfileFooter(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}