import 'package:flutter/material.dart';

class InvestmentImage extends StatelessWidget {
  const InvestmentImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 431,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Semantics(
        label: 'Investment illustration',
        child: SizedBox(),
      ),
    );
  }
}