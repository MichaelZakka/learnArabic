import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/views/topics/widgets/topic_widget.dart';
import 'package:kaleela/widgets/appBars/cusotm_appBar.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> alphabet = [
      'أ',
      'ب',
      'ت',
      'ث',
      'ج',
      'ح',
      'خ',
      'د',
      'ذ',
      'ر',
      'ز',
      'س',
      'ش',
      'ص',
      'ض',
      'ط',
      'ظ',
      'ع',
      'غ',
      'ف',
      'ق',
      'ك',
      'ل',
      'م',
      'ن',
      'ه',
      'و',
      'ي',
    ];
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(color: cyan),
        endDrawer: Drawer(),
        body: ListView.builder(
          itemCount: alphabet.length,
          itemBuilder: (context, index) {
            RxBool isExpanded = false.obs;
            return Column(
              children: [
                Topic_Widget(
                  letter: alphabet[index],
                  id: index + 1,
                  onTap: (){
                    print(isExpanded);
                  }
                ),
                SizedBox(
                  height: 25.r,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
