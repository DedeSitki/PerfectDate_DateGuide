import 'package:flutter/material.dart';
import '../../constant/constant.dart';

class AccountAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const AccountAppbar({super.key})
      : preferredSize = const Size.fromHeight(58);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constant.pink,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Center(child: Image.asset("assets/image/account_appbar.png")),
    );
  }
}
