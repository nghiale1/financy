import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26),
      child: CircleAvatar(
        radius: 58.5,
        backgroundImage: const NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/36ff38a22c1ef48f306a66f24c3adf0e4a0ae0b0feaf91e33970080fa323b561?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772'),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}