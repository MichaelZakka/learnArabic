import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/styles.dart';

class LessonWidget extends StatelessWidget {
  final int id;
  final String letter;
  final VoidCallback onTap;
  const LessonWidget({super.key  , required this.id , required this.letter , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: Get.width * 0.75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 200.r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60.r,
                    height: 60.r,
                    decoration: BoxDecoration(
                      color: cyan,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Container(
                        width: 35.r,
                        height: 35.r,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: bronze),
                        child: Center(
                          child: Text(
                            letter,
                            style: poppins_samll_black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lesson $id',
                        style: poppins_samll_black,
                      ),
                      Text(
                        'أ',
                        style: poppins_xSamll_black_bold,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
