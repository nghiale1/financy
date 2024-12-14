import 'package:financy/feature/common/presentation/widget/child_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constant/app_colors.dart';
import 'security_options.dart';

class SecurityScreen extends ConsumerWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ChildAppBar(title: "Security"),
      body: SafeArea(
        child: Expanded(
          child: Container(
            constraints: BoxConstraints(maxWidth: 480),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: Expanded(child: SecurityOptions()),
          ),
        ),
      ),
    );
  }
}
