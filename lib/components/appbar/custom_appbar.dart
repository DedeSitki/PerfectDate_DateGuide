import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(58);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constant.blue,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Center(child: Image.asset("assets/image/home_appbar.png")),
    );
  }
}
