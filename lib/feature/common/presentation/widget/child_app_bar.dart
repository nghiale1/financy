import 'package:financy/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class ChildAppBar extends StatelessWidget implements PreferredSizeWidget  {
  final String title;

  const ChildAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      leading: Navigator.canPop(context)
          ? IconButton(
        icon: const Icon(Icons.arrow_back,
            color: Color(0xFF093030)),
        onPressed: () => Navigator.of(context).pop(),
      )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF052224),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
