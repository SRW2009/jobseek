
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/domain/entities/category.dart';

class JobSeekerHomeController extends Controller {
  final pageController = PageController();
  int activePageIndex = 0;

  // TODO: fetch data from internet
  final jobs = d.jobs;
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

  void onNavigateJobDetail(Job job) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.jobDetail, arguments: job);
  }

  void onNavigateMyProfile() {
    Navigator.pushNamed(getContext(), JobSeekerRoute.myProfile);
  }

  void onNavigateIdentityVerification() {
    Navigator.pushNamed(getContext(), JobSeekerRoute.identityVerification);
  }

  void onNavigateMyFiles() {
    Navigator.pushNamed(getContext(), JobSeekerRoute.myFiles);
  }
}