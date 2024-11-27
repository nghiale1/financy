import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFF322846),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, true),
          _buildNavItem(Icons.pie_chart),
          _buildNavItem(Icons.notifications),
          _buildNavItem(Icons.person),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, [bool isActive = false]) {
    return Icon(
      icon,
      color: isActive ? Colors.white : Colors.grey,
      size: 30,
    );
  }
}