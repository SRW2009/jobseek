
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/next_fab.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/specialization_card.dart';

import 'choose_specialization_controller.dart';

class JobSeekerChooseSpecializationPage extends View {
  const JobSeekerChooseSpecializationPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerChooseSpecializationCategoryState();
}

class _JobSeekerChooseSpecializationCategoryState extends ViewState<JobSeekerChooseSpecializationPage, JobSeekerChooseSpecializationController> {
  _JobSeekerChooseSpecializationCategoryState()
      : super(JobSeekerChooseSpecializationController());

  @override
  Widget get view => SizedBox(
    key: globalKey,
    child: Scaffold(
      body: ControlledSliversBuilder<JobSeekerChooseSpecializationController>(
        sliversBuilder: (context, controller) => [
          const PrimarySliverAppBar(
            label: 'Choose Your Specialization',
            implyLeading: false,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final specialization = controller.specializations[index];
                  return SpecializationCard(
                    key: ValueKey("$index${controller.selectedIndex==index}"),
                    title: specialization.title,
                    icon: specialization.image,
                    onTap: () => controller.onSelectSpecialization(index),
                    selected: controller.selectedIndex==index,
                  );
                },
                childCount: controller.specializations.length,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: ControlledWidgetBuilder<JobSeekerChooseSpecializationController>(
        builder: (context, controller) {
          return NextFloatingActionButton(
            onPressed: controller.onNavigateNext,
          );
        },
      ),
    ),
  );
}