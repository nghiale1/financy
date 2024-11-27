import 'package:flutter/material.dart';

class InvestmentTitle extends StatelessWidget {
  const InvestmentTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          height: 1.43,
          letterSpacing: -0.5,
        ),
        children: const [
          TextSpan(
            text: 'Investment',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          TextSpan(text: ' And\n'),
          TextSpan(text: 'Manage '),
          TextSpan(
            text: 'Money Easily',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}