import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/styles.dart';
import 'package:kaleela/views/topics/controller.dart';

class Topic_Widget extends StatelessWidget {
  final String letter;
  final int id;
  final void Function()? onTap;

  const Topic_Widget(
      {super.key, required this.letter, required this.id, required this.onTap});

  @override
  Widget build(BuildContext context) {
    RxBool isExpanded = false.obs;
    return GetBuilder<TopicsController>(builder: (_) {
      return Column(
        children: [
          GestureDetector(
            onTap: onTap,
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
                  GestureDetector(
                    onTap: () {
                      _.toggleVar(isExpanded);
                    },
                    child: Container(
                      width: 55.r,
                      height: 55.r,
                      decoration: BoxDecoration(
                        color: cyan,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: white,
                          size: 45.r,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          isExpanded.value
              ? Container(
                  width: 45,
                  height: 45,
                  color: red,
                )
              : SizedBox()
        ],
      );
    });
  }
}
