
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class JobSeekerHomeController extends Controller {
  final pageController = PageController();

  int activePageIndex = 0;

  @override
  void initListeners() {}

  void onTapNavItem(int index) {
    activePageIndex = index;
    pageController.animateToPage(activePageIndex, duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    refreshUI();
  }
}