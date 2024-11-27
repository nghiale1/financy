import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: SvgPicture.asset('assets/images/Google.svg'),
          iconSize: 34,
          onPressed: () {
            // Handle Google login
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: SvgPicture.asset('assets/images/Facebook.svg'),
          iconSize: 34,
          onPressed: () {
            // Handle Facebook login
          },
        ),
      ],
    );
  }
}