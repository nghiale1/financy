import 'package:flutter/material.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/5390f755e35f4424ce8ab63b9de23bc2b4c110dc753d29b677a212ca2d04653e?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: 64,
            height: 64,
            semanticLabel: 'Social sign-in options',
          ),
        ],
      ),
    );
  }
}