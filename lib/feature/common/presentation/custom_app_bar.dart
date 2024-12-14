import 'package:financy/core/constant/app_colors.dart';
import 'package:financy/feature/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../provider/notification_notifier.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool hasBackButton;
  final Widget title;
  final VoidCallback? onBackPressed;
  final bool showNotifyIcon;

  CustomAppBar({
    required this.title,
    this.hasBackButton = false,
    this.onBackPressed,
    this.showNotifyIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: [
        if (showNotifyIcon)
          Consumer(
            builder: (context, ref, child) {
              final notificationCount = ref.watch(notificationNotifier);
              return IconButton(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset('assets/icons/notification.svg',
                        width: 30, height: 30),
                    if (notificationCount > 0)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            notificationCount > 9
                                ? '9+'
                                : notificationCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
                onPressed: () {
                  ref
                      .read(notificationNotifier.notifier)
                      .increaseNotification();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ));
                },
              );
            },
          ),
      ],
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
