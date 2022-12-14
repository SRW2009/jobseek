
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/data/repositories/job_repo.dart';
import 'package:jobseek/jobseeker/data/repositories/specialization_repo.dart';
import 'package:jobseek/jobseeker/data/repositories/user_repo.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';

import 'home_controller.dart';
import 'home_data.dart';
import 'ui/job_ui.dart';
import 'ui/search_ui.dart';
import 'ui/notification_ui.dart';
import 'ui/profile_ui.dart';

class JobSeekerHomePage extends View {
  const JobSeekerHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerHomeState();
}

class _JobSeekerHomeState extends ViewState<JobSeekerHomePage, JobSeekerHomeController> {
  _JobSeekerHomeState()
      : super(JobSeekerHomeController(
      JobSeekerJobRepository(), JobSeekerSpecializationRepository(), JobSeekerRepository()
  ));

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

  List<Widget> navPages(JobSeekerHomeController controller) => [
    JobSeekerHomeUIJob(controller),
    JobSeekerHomeUISearch(controller),
    JobSeekerHomeUINotification(controller),
    JobSeekerHomeUIProfile(controller),
  ];

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: DataControlledSliversBuilder<JobSeekerHomeController, JobSeekerHomeData>(
      sliversBuilder: (context, controller, data) => [
        SliverFillViewport(
          delegate: SliverChildListDelegate([
            PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: navPages(controller),
            ),
          ]),
        ),
      ],
    ),
    bottomNavigationBar: ControlledWidgetBuilder<JobSeekerHomeController>(
      builder: (context, controller) => BottomNavigationBar(
        currentIndex: controller.activePageIndex,
        items: navItems,
        onTap: controller.onSelectNavItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.secondaryContainer,
      ),
    ),
  );
}