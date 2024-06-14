import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/images.dart';
import 'package:kaleela/res/styles.dart';
import 'package:kaleela/widgets/buttons/custom_button.dart';

class UserModePage extends StatelessWidget {
  const UserModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.5,
                  color: offwhite,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          ACCOUNT,
                          width: 125.r,
                        ),
                        40.r.verticalSpace,
                        Text(
                          'New user',
                          style: poppins_medium_black,
                        ),
                        15.r.verticalSpace,
                        CustomButton(
                          ontap: (){
                            Get.toNamed('/chooseLanguage');
                          },
                          width: 175.r,
                          color: orange,
                          text: 'Get Started',
                          textStyle: poppins_xSamll_black_bold,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: Get.height * 0.5,
                  color: white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          GUEST,
                          width: 125.r,
                        ),
                        40.r.verticalSpace,
                        Text(
                          'Existing user',
                          style: poppins_medium_black,
                        ),
                        15.r.verticalSpace,
                        CustomButton(
                          ontap: (){Get.toNamed('/auth');},
                          width: 175.r,
                          color: cyan,
                          text: 'Sign in',
                          textStyle: poppins_xSamll_white_bold,
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
    );
  }
}
