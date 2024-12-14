import 'package:flutter/material.dart';

class ContactOptions extends StatelessWidget {
  const ContactOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContactOption('Customer Service', 'assets/images/customer_service_icon.png'),
          const SizedBox(height: 17),
          _buildContactOption('Website', 'assets/images/website_icon.png'),
          const SizedBox(height: 19),
          _buildContactOption('Facebook', 'assets/images/facebook_icon.png'),
          const SizedBox(height: 19),
          _buildContactOption('WhatsApp', 'assets/images/whatsapp_icon.png'),
          const SizedBox(height: 19),
          _buildContactOption('Instagram', 'assets/images/instagram_icon.png'),
        ],
      ),
    );
  }

  Widget _buildContactOption(String text, String iconPath) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 31,
          height: 31,
        ),
        const SizedBox(width: 18),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF093030),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        const Spacer(),
        Image.asset(
          'assets/images/arrow_icon.png',
          width: 9,
          height: 15,
        ),
      ],
    );
  }
}