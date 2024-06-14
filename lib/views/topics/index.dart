import 'package:flutter/material.dart';
import 'package:kaleela/res/colors.dart';
import 'package:kaleela/res/styles.dart';
import 'package:kaleela/widgets/appBars/cusotm_appBar.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(color: cyan),
        endDrawer: Drawer(),
        body: Column(
          children: [
            Text(
              'data',
              style: poppins_large_black,
            ),
          ],
        ),
      ),
    );
  }
}
