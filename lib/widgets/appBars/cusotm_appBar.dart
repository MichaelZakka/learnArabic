import 'package:flutter/material.dart';
import 'package:kaleela/res/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;
  const CustomAppbar({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: white),
      backgroundColor: color,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
