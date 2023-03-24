import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udevs_project/ui/button/my-elevetd_btn.dart';
import 'package:udevs_project/ui/empty_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FCFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(child: Row()),
            Expanded(
              flex: 3,
              child: Image.asset(
                'assets/images/onboard_im.png',
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'Reminders made simple',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(
                        0xFF554E8F,
                      ),
                    ),
                  ),
                  const Spacer(),
                  MyElevetedBtn(
                    colors: const Color(0xFF5DE61A),
                    title: 'Get Started',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return EmptyScreen();
                        }),
                      );
                    },
                  ),
                  const Spacer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
