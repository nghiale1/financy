import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool readOnly;
  final IconData? suffixIcon;
  final VoidCallback? onTap;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? prefixText;
  final int? maxLines;

  const CustomInputField({
    Key? key,
    required this.label,
    required this.controller,
    this.readOnly = false,
    this.suffixIcon,
    this.onTap,
    this.hintText,
    this.keyboardType,
    this.prefixText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF093030),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          onTap: onTap,
          keyboardType: keyboardType,
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFDFF7E2),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF0E3E3E),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'League Spartan',
            ),
            prefixText: prefixText,
            suffixIcon: suffixIcon != null
                ? Icon(suffixIcon, color: const Color(0xFF093030))
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          style: const TextStyle(
            color: Color(0xFF093030),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'League Spartan',
          ),
        ),
      ],
    );
  }
}
