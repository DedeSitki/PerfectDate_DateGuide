import 'package:flutter/material.dart';
import '../Screen/Navbar Screen/account.dart';
import '../Screen/Navbar Screen/home.dart';
import '../model/navbar_model/bottom_navbar_model.dart';

class MainScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(
        image: "assets/icon/homenew.png", title: "Home", color: Colors.blue),
    BottomNavBarModel(
        image: "assets/icon/accountnew.png",
        title: "Account",
        color: Colors.pink),
  ];

  int currentIndex = 0;
  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const Home();
      case 1:
        return const Account();
      default:
        return const Home();
    }
  }
}
