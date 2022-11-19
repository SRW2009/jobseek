
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/app/route.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/category.dart';
import 'package:jobseek/company/data/dummies.dart' as d;

class CompanyHomeController extends Controller {
  final pageController = PageController();
  int activePageIndex = 0;

  // TODO: fetch data from internet
  final appliers = d.appliers;
  final categories = d.categories;
  final notifications = d.notifications;

  @override
  void initListeners() {}

  void onSelectNavItem(int index) {
    activePageIndex = index;
    pageController.animateToPage(activePageIndex, duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    refreshUI();
  }

  void onSearchChanged(String query) {}

  void onSelectCategory(Category category) {}

  void onNavigateApplierDetail(Applier applier) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.myProfile, arguments: applier);
  }

  void onNavigateMyProfile() {
    Navigator.pushNamed(getContext(), CompanyRoute.myProfile);
  }

  void onNavigateIdentityVerification() {
    Navigator.pushNamed(getContext(), CompanyRoute.identityVerification);
  }

  void onSignOut() {
    Navigator.pushReplacementNamed(getContext(), CompanyRoute.login);
  }
}