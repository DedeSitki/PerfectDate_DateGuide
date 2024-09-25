import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../../constant/constant.dart';

class AccountAppbarWithIcon extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const AccountAppbarWithIcon({super.key})
      : preferredSize = const Size.fromHeight(58);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constant.pink,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Grock.back();
            },
            child: Image.asset(
              "assets/icon/heart_left.png",
              height: 40,
              width: 40,
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/image/account_appbar.png",
              ),
            ),
          ),
          const SizedBox(width: 35),
        ],
      ),
    );
  }
}
