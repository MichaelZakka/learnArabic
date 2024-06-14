import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cyan,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                120.r.verticalSpace,
                Text(
                  'Learn Arabic the right way',
                  style: poppins_large_white,
                ),
                20.r.verticalSpace,
                Text(
                  'تعلم العربية',
                  style: poppins_large_white,
                ),
                300.r.verticalSpace,
                Text('AppName', style: poppins_large_white),
                Text('اسم التطبيق', style: poppins_large_white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
