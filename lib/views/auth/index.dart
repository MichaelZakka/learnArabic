import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/images.dart';
import 'package:kaleela/res/styles.dart';
import 'package:kaleela/views/auth/controller.dart';
import 'package:kaleela/views/auth/widgets/login_widget.dart';
import 'package:kaleela/widgets/buttons/custom_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cyan,
        body: SingleChildScrollView(
          child: Center(
            // child: SvgPicture.asset(LOGO),
            child: Column(
              children: [
                75.r.verticalSpace,
                SvgPicture.asset(
                  color: bronze,
                  LOGO,
                  height: 150,
                ),
                Text(
                  'AppName',
                  style: poppins_xxlarge_white,
                ),
                15.r.verticalSpace,
                GetBuilder<AuthController>(builder: (_) {
                  return AuthWidget(
                    isLoging: _.login.value,
                  );
                }),
                15.r.verticalSpace,
                CustomButton(
                  width: 200.r,
                  text: 'Continue as a guest',
                  color: bronze,
                  ontap: (){
                    Get.toNamed('/chooseLanguage');
                  },
                  textStyle: poppins_xSamll_white_bold,
                ),
                15.r.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
