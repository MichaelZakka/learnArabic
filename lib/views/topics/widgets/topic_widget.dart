import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/styles.dart';
import 'package:kaleela/views/topics/controller.dart';
import 'package:kaleela/views/topics/widgets/lesson_widget.dart';

class Topic_Widget extends StatelessWidget {
  final String letter;
  final int id;

  const Topic_Widget({super.key, required this.letter, required this.id});

  @override
  Widget build(BuildContext context) {
    RxBool isExpanded = false.obs;
    return GetBuilder<TopicsController>(builder: (_) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              _.toggleVar(isExpanded);
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200.r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 75.r,
                          height: 75.r,
                          decoration: BoxDecoration(
                            color: cyan,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Container(
                            width: 50.r,
                            height: 50.r,
                            decoration: BoxDecoration(
                              color: orange,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                letter,
                                style: poppins_medium_black,
                              ),
                            ),
                          )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Topic $id',
                              style: poppins_medium_black,
                            ),
                            // Text(
                            //   letter,
                            //   style: poppins_medium_black,
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 55.r,
                    height: 55.r,
                    decoration: BoxDecoration(
                      color: cyan,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        isExpanded.value
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: white,
                        size: 45.r,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          isExpanded.value
              ? LessonWidget(
                  id: id,
                  letter: letter,
                  onTap: () {},
                )
              : SizedBox()
        ],
      );
    });
  }
}
