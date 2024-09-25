import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../../components/appbar/account_appbar.dart';
import 'account screen/Contact.dart';
import 'account screen/appInfo.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AccountAppbar(),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/image/account_background.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView.builder(
                  itemCount: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return accountPage(
                          () => Grock.to(const AppInfo()),
                          "assets/icon/date.png",
                          "App Information",
                          "assets/icon/heart_right.png");
                    } else {
                      return accountPage(
                          () => Grock.to(const Contact()),
                          "assets/icon/chat.png",
                          "Contact Us",
                          "assets/icon/heart_right.png");
                    }
                  },
                )),
          ],
        ));
  }

  Widget accountPage(
      VoidCallback onTap, String leftIcon, String name, String rightIcon) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.only(right: 15, left: 15),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  leftIcon,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black)),
              ],
            ),
            Image.asset(
              rightIcon,
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
