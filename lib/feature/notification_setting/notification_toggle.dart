import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class NotificationToggle extends StatefulWidget {
  final String label;

  const NotificationToggle({Key? key, required this.label}) : super(key: key);

  @override
  _NotificationToggleState createState() => _NotificationToggleState();
}

class _NotificationToggleState extends State<NotificationToggle> {
  bool _isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            color: Color(0xFF363130),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        Switch(
          value: _isEnabled,
          onChanged: (value) {
            setState(() {
              _isEnabled = value;
            });
          },
          activeColor: Colors.white,
          activeTrackColor: AppColors.primaryColor.withOpacity(0.8),
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey[400],
        ),
      ],
    );
  }
}