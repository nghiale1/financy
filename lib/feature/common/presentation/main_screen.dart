import 'package:financy/feature/common/presentation/custom_app_bar.dart';
import 'package:financy/feature/home/home_screen.dart';
import 'package:financy/feature/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/app_colors.dart';
import '../../analysis/quick_analysis_screen.dart';
import '../../category/categories_screen.dart';
import '../../profile/profile_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final List<Widget> _screens = [
    const HomeScreen(),
    const QuickAnalysisScreen(),
    const TransactionScreen(),
    const CategoriesScreen(),
    const ProfileScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _currentIndex == 0 ? AppColors.primaryColor : Colors.white,
      appBar: CustomAppBar(
        title: _getAppBarTitle(),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _getAppBarTitle() {
    TextStyle defaultStyle = const TextStyle(
      color: Color(0xFF052224),
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    );

    switch (_currentIndex) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Welcome Back',
                style: defaultStyle.copyWith(fontSize: 20)),
            Text('Good Morning', style: defaultStyle.copyWith(fontSize: 14)),
          ],
        );
      case 1:
        return _buildTitle('Quick Analysis', defaultStyle);
      case 2:
        return _buildTitle('Transactions', defaultStyle);
      case 3:
        return _buildTitle('Categories', defaultStyle);
      case 4:
        return _buildTitle('Profile', defaultStyle);
      default:
        return _buildTitle('Home', defaultStyle);
    }
  }

  Widget _buildTitle(String title, TextStyle style) {
    return Text(
      title,
      style: style,
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 46),
      decoration: const BoxDecoration(
        color: Color(0xFFDFF7E2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildBottomButton(0, 'assets/icons/home.svg', 28),
          _buildBottomButton(1, 'assets/icons/wallet.svg', 28),
          _buildBottomButton(2, 'assets/icons/chart.svg', 26),
          _buildBottomButton(3, 'assets/icons/stack.svg', 26),
          _buildBottomButton(4, 'assets/icons/user.svg', 28),
        ],
      ),
    );
  }

  Widget _buildBottomButton(int index, String iconPath, double size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
          width: 46,
          height: 46,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: _currentIndex == index
                  ? AppColors.primaryColor
                  : Colors.transparent),
          child: SvgPicture.asset(
            iconPath,
            color: Colors.black,
            width: size,
            height: size,
          )),
    );
  }
}
