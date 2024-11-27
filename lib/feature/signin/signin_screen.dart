import 'package:financy/feature/signin/signin_form.dart';
import 'package:financy/feature/signin/social_signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3629B7),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/cfd0f90ed19472332cf7559b8550470aae13ebcc668ebbb352c09aab9f3d1908?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                    width: 32,
                    semanticLabel: 'Logo',
                  ),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/c36d9046fa37f2537549b962edb57ff7405364ec508577d81ab823ef81e737ca?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                        width: 17,
                        semanticLabel: 'Notification icon',
                      ),
                      const SizedBox(width: 5),
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/05a1b076584865e37f82170f408fccbba73bbd13d98e31a6cbc8b153cf143b15?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                        width: 15,
                        semanticLabel: 'Settings icon',
                      ),
                      const SizedBox(width: 5),
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/c176e08856e763e0db5b4a7fae498877b54fd47b0b7a4ec0f0485dccff9c72a4?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                        width: 24,
                        semanticLabel: 'User profile icon',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 36.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: Color(0xFF3629B7),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Hello there, sign in to continue',
                          style: TextStyle(
                            color: Color(0xFF343434),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 32),
                        Center(
                          child: Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/d4f251c6ee303f20f60d8547c407188bdab1dbea6dab250b54e5f51f6783863d?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                            width: 213,
                            semanticLabel: 'Welcome illustration',
                          ),
                        ),
                        const SizedBox(height: 32),
                        const SignInForm(),
                        const SizedBox(height: 40),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Sign in logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF2F1F9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              minimumSize: const Size(327, 48),
                            ),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        const SocialSignIn(),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 12,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigate to sign up screen
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFF3629B7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 41),
                        Center(
                          child: Container(
                            width: 134,
                            height: 5,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCACACA),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
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