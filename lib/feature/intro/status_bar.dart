import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '9:41',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Image.network(
          'https://cdn.builder.io/api/v1/image/assets/TEMP/e31a452df96056d80f4198cc309b94191445145078496caa9b9b16d6f286bc7b?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
          width: 70,
          fit: BoxFit.contain,
          semanticLabel: 'Status bar icons',
        ),
      ],
    );
  }
}