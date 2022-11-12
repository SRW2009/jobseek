
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/pages/home/ui/profile/ui_profile_page.dart';

import 'home_controller.dart';
import 'ui/job/ui_job_page.dart';
import 'ui/notification/ui_notification_page.dart';
import 'ui/search/ui_search_page.dart';

class JobSeekerHomePage extends View {
  const JobSeekerHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerHomeState();
}

class _JobSeekerHomeState extends ViewState<JobSeekerHomePage, JobSeekerHomeController> {
  _JobSeekerHomeState()
      : super(JobSeekerHomeController());

  final List<BottomNavigationBarItem> navItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.work_outline),
      activeIcon: Icon(Icons.work),
      label: 'Job',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      activeIcon: Icon(Icons.saved_search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications_none),
      activeIcon: Icon(Icons.notifications),
      label: 'Notification',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  final List<Widget> navPages = const [
    JobSeekerHomeUIJobPage(),
    JobSeekerHomeUISearchPage(),
    JobSeekerHomeUINotificationPage(),
    JobSeekerHomeUIProfilePage(),
  ];

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: ControlledWidgetBuilder<JobSeekerHomeController>(
        builder: (context, controller) => PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: navPages,
        ),
    ),
    bottomNavigationBar: ControlledWidgetBuilder<JobSeekerHomeController>(
      builder: (context, controller) => BottomNavigationBar(
        currentIndex: controller.activePageIndex,
        items: navItems,
        onTap: controller.onTapNavItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
    ),
  );
}