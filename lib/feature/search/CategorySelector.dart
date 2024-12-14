import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            color: Color(0xFF031314),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 7),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          decoration: BoxDecoration(
            color: const Color(0xFFDFF7E2),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Select the category',
                style: TextStyle(
                  color: Color(0xFF0E3E3E),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'League Spartan',
                ),
              ),
              Image.asset('assets/images/icon6.png', width: 9, height: 5),
            ],
          ),
        ),
      ],
    );
  }
}