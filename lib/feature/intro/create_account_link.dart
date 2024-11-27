import 'package:flutter/material.dart';

class CreateAccountLink extends StatelessWidget {
  const CreateAccountLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Implement create account functionality
      },
      child: const Text(
        'Create Account',
        style: TextStyle(
          color: Color(0xFFE8E8E8),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}