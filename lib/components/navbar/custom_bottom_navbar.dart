import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import '../../Screen/Main Screen/main_scaffold.dart';

class CustomBottomNavbar extends ConsumerWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(mainScaffoldRiverpod);
    var read = ref.read(mainScaffoldRiverpod);

    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: SafeArea(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 63,
          width: Grock.width,
          color: read.items[watch.currentIndex].color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < read.items.length; i++)
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      read.setCurrentIndex(i);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TweenAnimationBuilder<Color?>(
                          duration: const Duration(milliseconds: 300),
                          tween: ColorTween(
                            begin: i == watch.currentIndex
                                ? Colors.black
                                : Colors.white,
                            end: i == watch.currentIndex
                                ? Colors.white
                                : Colors.black,
                          ),
                          builder: (context, color, child) => Image.asset(
                            read.items[i].image,
                            color: color,
                          ),
                        ),
                        AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 300),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                            color: i == watch.currentIndex
                                ? Colors.white
                                : Colors.black,
                          ),
                          child: Text(read.items[i].title),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
