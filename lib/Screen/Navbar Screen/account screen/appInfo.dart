import 'package:flutter/material.dart';
import '../../../components/appbar/account_appbar_with_back_icon.dart';
import '../../../constant/constant.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AccountAppbarWithIcon(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              AppLogo(),
              SizedBox(height: 20),
              AppName(),
              SizedBox(height: 5),
              AppVersion(),
              Year(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        "assets/icon/date_picker_logo.png",
        width: 150,
      ),
    );
  }
}

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Perfect Date : Date Guide",
      style: TextStyle(color: Constant.black),
    );
  }
}

class AppVersion extends StatelessWidget {
  const AppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "1.00.00 v",
      style: TextStyle(color: Constant.grey700),
    );
  }
}

class Year extends StatelessWidget {
  const Year({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "2024",
      style: TextStyle(color: Constant.grey700),
    );
  }
}
