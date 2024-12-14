import 'package:financy/feature/add_expense/custom_button.dart';
import 'package:financy/feature/category/balance_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/app_colors.dart';
import '../category_detail/category_detail_screen.dart';
import '../common/presentation/custom_text_field.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const BalanceSection(),
            const SizedBox(
              height: 16,
            ),
            _buildCategoriesGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesGrid(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 24),
        decoration: const BoxDecoration(
          color: Color(0xFFF1FFF3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              ..._categoryItems(context),
            ]),
      ),
    );
  }

  List<Widget> _categoryItems(BuildContext context) {
    final categories = [
      {'icon': 'assets/icons/food.svg', 'label': 'Food'},
      {'icon': 'assets/icons/transport.svg', 'label': 'Transport'},
      {'icon': 'assets/icons/medicine.svg', 'label': 'Medicine'},
      {'icon': 'assets/icons/groceries.svg', 'label': 'Groceries'},
      {'icon': 'assets/icons/rent.svg', 'label': 'Rent'},
      {'icon': 'assets/icons/gift.svg', 'label': 'Gifts'},
      {'icon': 'assets/icons/saving.svg', 'label': 'Savings'},
      {'icon': 'assets/icons/entertainment.svg', 'label': 'Entertainment'},
      {
        'icon': 'assets/icons/plus.svg',
        'label': 'More',
        'func': () => showCustomDialog(context)
      },
    ];

    return categories.map((category) {
      return CategoryItem(
        icon: category['icon'] as String,
        label: category['label'] as String,
        func: category['func'] as VoidCallback? ??
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const CategoryDetailScreen()),
              );
            },
      );
    }).toList();
  }

  void showCustomDialog(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text('New Category',
                style: TextStyle(
                  color: Color(0xFF093030),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                )),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                hintText: 'Write...',
              ),
            ],
          ),
          actions: [
            Center(
              child: SizedBox(
                width:250,
                child: CustomButton(
                  text: 'Save',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            SizedBox(height: 16,),
            Center(
              child: SizedBox(
                width:250,
                child: CustomButton(
                  text: 'Cancel',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: const Color(0xFFDFF7E2),
                  textColor: const Color(0xFF0E3E3E),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
