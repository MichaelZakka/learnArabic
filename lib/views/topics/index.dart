import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/views/topics/widgets/lesson_widget.dart';
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
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                12.r.verticalSpace,
                LessonWidget(
                  onTap: (){},
                  id: index + 1,
                  letter: alphabet[index],
                ),
                12.r.verticalSpace,
              ],
            );
          },
        ),
      ),
    );
  }
}
