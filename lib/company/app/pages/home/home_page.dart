
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/data/repositories/applier_repo.dart';
import 'package:jobseek/company/data/repositories/specialization_repo.dart';
import 'package:jobseek/company/data/repositories/user_repo.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';

import 'home_controller.dart';
import 'home_data.dart';
import 'ui/applier_ui.dart';
import 'ui/notification_ui.dart';
import 'ui/profile_ui.dart';
import 'ui/search_ui.dart';

class CompanyHomePage extends View {
  const CompanyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyHomeState();
}

class _CompanyHomeState extends ViewState<CompanyHomePage, CompanyHomeController> {
  _CompanyHomeState()
      : super(CompanyHomeController(
      CompanyApplierRepository(), CompanySpecializationRepository(), CompanyRepository()
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

  List<Widget> navPages(CompanyHomeController controller) => [
    CompanyHomeUIApplier(controller),
    CompanyHomeUISearch(controller),
    CompanyHomeUINotification(controller),
    CompanyHomeUIProfile(controller),
  ];

  @override
  Widget get view => Scaffold(
    key: globalKey,
    body: DataControlledSliversBuilder<CompanyHomeController, CompanyHomeData>(
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
    bottomNavigationBar: ControlledWidgetBuilder<CompanyHomeController>(
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