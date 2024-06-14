import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/styles.dart';
import 'package:kaleela/views/choose_language/controller.dart';
import 'package:kaleela/widgets/appBars/cusotm_appBar.dart';
import 'package:kaleela/widgets/buttons/custom_button.dart';

class ChooseLanguagePage extends StatelessWidget {
  const ChooseLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const Drawer(),
        appBar: CustomAppbar(color: light_orange),
        backgroundColor: offwhite,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                40.r.verticalSpace,
                Text(
                  'My speaking language is',
                  style: poppins_medium_black,
                ),
                30.r.verticalSpace,
                CustomButton(
                  text: 'English',
                  width: 200.r,
                  ontap: () {},
                  textStyle: poppins_xSamll_white,
                ),
                40.r.verticalSpace,
                Container(
                  width: Get.width,
                  color: light_orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      40.r.verticalSpace,
                      Text(
                        'I want to learn',
                        style: poppins_medium_black,
                      ),
                      40.r.verticalSpace,
                      CustomButton(
                        text: 'Arabic',
                        width: 200.r,
                        ontap: () {},
                        color: cyan,
                        textStyle: poppins_xSamll_white,
                      ),
                      40.r.verticalSpace,
                    ],
                  ),
                ),
                40.r.verticalSpace,
                Text(
                  'My level is ',
                  style: poppins_medium_black,
                ),
                30.r.verticalSpace,
                GetBuilder<ChooseLangController>(builder: (_) {
                  return CustomButton(
                    text: _.choice == '' ? 'Select level' : _.choice,
                    width: 200.r,
                    color: _.choice == '' ? grey : light_orange,
                    textStyle: poppins_xSamll_black,
                    ontap: () {
                      _.showDialog(_.choices);
                    },
                  );
                }),
                80.r.verticalSpace,
                GetBuilder<ChooseLangController>(builder: (_) {
                  return CustomButton(
                    ontap: () {
                      if (_.choice == '') {
                        _.validation('Please select a level', red);
                      }else{
                        Get.toNamed('/topics');
                      }
                      
                    },
                    width: 200.r,
                    text: 'Continue',
                    textStyle: poppins_xSamll_white,
                  );
                }),
                40.r.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
