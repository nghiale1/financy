import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 61, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/5102e59beecc59e15238b22fe8931503ac475d3d2950f45db8aec03bdaef4d66?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: 21,
            height: 24,
            semanticLabel: 'Back',
          ),
          Text(
            'Profile',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: const Color(0xFF093030),
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/a897bf27c4e53e768ceac97a7bd7873d1e89b58d82e5d4e151e7db2949c327a1?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: 30,
            height: 30,
            semanticLabel: 'Settings',
          ),
        ],
      ),
    );
  }
}