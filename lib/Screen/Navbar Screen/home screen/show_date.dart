import 'dart:async';
import 'package:flutter/material.dart';
import 'date_result.dart';

class ShowDate extends StatefulWidget {
  const ShowDate({super.key});

  @override
  State<ShowDate> createState() => _ShowDateState();
}

class _ShowDateState extends State<ShowDate> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DateResult()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/image/splash_date_result.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
