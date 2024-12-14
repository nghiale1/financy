import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constant/app_colors.dart';

class SuccessFingerprintScreen extends StatelessWidget {
  const SuccessFingerprintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pop(context);
    });
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) => Scaffold(
            backgroundColor: AppColors.primaryColor,
            body: SafeArea(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/icons/finger_success.svg',
                      width: 117,
                      height: 122,
                      color: const Color(0xFFF1FFF3),
                    ),
                    const SizedBox(height: 52),
                    Text(
                      'Fingerprint has been changed successfully',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: const Color(0xFFF1FFF3),
                            fontWeight: FontWeight.w600,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              // child: Column(
              //   children: [
              //     Expanded(
              //       child: Container(
              //         decoration: const BoxDecoration(
              //           color: AppColors.primaryColor,
              //           borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(70),
              //             topRight: Radius.circular(70),
              //           ),
              //         ),
              //         child: SingleChildScrollView(
              //           child: Padding(
              //             padding: const EdgeInsets.fromLTRB(36, 90, 36, 166),
              //             child: Column(
              //               children: [
              //                 Container(
              //                   width: 195,
              //                   height: 195,
              //                   decoration: const BoxDecoration(
              //                     shape: BoxShape.circle,
              //                     color: AppColors.primaryColor,
              //                   ),
              //                   child: Center(
              //                     child: SvgPicture.asset(
              //                       'assets/icons/finger_success.svg',
              //                       width: 117,
              //                       height: 122,
              //                       color: const Color(0xFFF1FFF3),
              //                     ),
              //                   ),
              //                 ),
              //                 const SizedBox(height: 52),
              //                 Text(
              //                   'fingerprint Has been Changed successfully',
              //                   style: Theme.of(context)
              //                       .textTheme
              //                       .titleLarge
              //                       ?.copyWith(
              //                         color: const Color(0xFFF1FFF3),
              //                         fontWeight: FontWeight.w600,
              //                       ),
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 const SizedBox(height: 27),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
        );
      },
    );
  }
}
