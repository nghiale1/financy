import 'package:financy/feature/security_fingerprint/security_fingerprint_screen.dart';
import 'package:financy/feature/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:flutter/material.dart';

class SecurityOptions extends StatelessWidget {
  const SecurityOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 41),
      padding: EdgeInsets.symmetric(horizontal: 38, vertical: 51),
      decoration: BoxDecoration(
        color: Color(0xFFF1FFF3),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Security',
            style: TextStyle(
              color: Color(0xFF093030),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 55),
          _buildOption('Change pin', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityFingerprintScreen(),))),
          _buildDivider(),
          _buildOption('Fingerprint', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityFingerprintScreen(),))),
          _buildDivider(),
          _buildOption('Terms and conditions', () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsAndConditionsScreen(),))),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildOption(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF093030),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
            Icon(Icons.arrow_forward_ios,size: 13,)
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      color: Color(0xFFDFF7E2),
    );
  }
}