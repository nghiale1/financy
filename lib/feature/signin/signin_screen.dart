import 'package:financy/feature/common/presentation/main_screen.dart';
import 'package:financy/feature/home/home_screen.dart';
import 'package:financy/feature/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constant/app_colors.dart';
import '../common/presentation/widget/custom_button.dart';
import 'custom_text_field.dart';
import 'social_login_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Text(
              'Welcome',
              style: TextStyle(
                color: Color(0xFF093030),
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 65),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        label: 'Username or email',
                        hintText: 'example@example.com',
                      ),
                      const SizedBox(height: 23),
                      const CustomTextField(
                        label: 'Password',
                        hintText: '●●●●●●●●',
                        isPassword: true,
                      ),
                      const SizedBox(height: 36),
                      Center(
                        child: CustomButton(
                          text: 'Log In',
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const MainScreen(),
                              ),
                              (route) => false,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 19),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            // Handle forgot password
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFF093030),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'League Spartan',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Center(
                        child: CustomButton(
                          text: 'Sign Up',
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CreateAccountScreen(),
                              ),
                              (route) => false,
                            );
                          },
                          backgroundColor: const Color(0xFFDFF7E2),
                          textColor: const Color(0xFF0E3E3E),
                        ),
                      ),
                      const SizedBox(height: 23),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            // Handle fingerprint access
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: 'Use ',
                              style: TextStyle(
                                color: Color(0xFF093030),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                              ),
                              children: [
                                TextSpan(
                                  text: 'fingerprint',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                                TextSpan(text: ' to access'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Center(
                        child: Text(
                          'or sign up with',
                          style: TextStyle(
                            color: Color(0xFF093030),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'League Spartan',
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                      const SocialLoginButtons(),
                      const SizedBox(height: 28),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                              color: Color(0xFF093030),
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'League Spartan',
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFF3299FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
