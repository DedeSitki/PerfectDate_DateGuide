import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../../components/appbar/custom_appbar.dart';
import 'home screen/show_date.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/image/home_background.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: mainButton(screenWidth, screenHeight),
          ),
        ],
      ),
    );
  }

  Widget mainButton(double screenWidth, double screenHeight) {
    final buttonWidth = screenWidth * 0.5;
    final buttonHeight = screenHeight * 0.25;
    return GestureDetector(
      onTap: () async {
        if (!_controller.isAnimating) {
          await _controller.forward();
          await Future.delayed(const Duration(milliseconds: 100));
          await _controller.reverse();
          await Future.delayed(const Duration(milliseconds: 100));
          Grock.to(const ShowDate());
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: 1 - _controller.value * 0.2,
            child: child,
          );
        },
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 7,
                blurRadius: 30,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Image.asset(
            "assets/image/home_page_button.png",
          ),
        ),
      ),
    );
  }
}
