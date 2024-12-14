import 'package:financy/feature/security_fingerprint/success_fingerprint_screen.dart';
import 'package:flutter/material.dart';

class TouchIdButton extends StatelessWidget {
  const TouchIdButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(context: context,
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.5),builder: (context) {
          return const Dialog.fullscreen(
            child: SuccessFingerprintScreen(),
          );
        },);

      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFDFF7E2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 70),
      ),
      child: Text(
        'Use touch id',
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: const Color(0xFF0E3E3E),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}