import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315,
      child: ElevatedButton(
        onPressed: () {
          // TODO: Implement get started functionality
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFDF6A7D),
                Color(0xFFC941A2),
                Color(0xFFFE3761),
                Color(0xFF781D2C),
              ],
              begin: Alignment(-0.95, -0.32),
              end: Alignment(0.95, 0.32),
            ),
            borderRadius: BorderRadius.circular(90),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}