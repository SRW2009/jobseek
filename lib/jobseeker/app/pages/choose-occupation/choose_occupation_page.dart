
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/category_card.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/next_fab.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';
import 'package:jobseek/shared/app/widgets/silly_sliver_appbar.dart';
import 'package:jobseek/shared/domain/entities/category.dart';

import 'choose_occupation_controller.dart';

class JobSeekerChooseOccupationPage extends View {
  const JobSeekerChooseOccupationPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerChooseSpecializationOccupationState();
}

class _JobSeekerChooseSpecializationOccupationState extends ViewState<JobSeekerChooseOccupationPage, JobSeekerChooseOccupationController> {
  _JobSeekerChooseSpecializationOccupationState()
      : super(JobSeekerChooseOccupationController());

  @override
  Widget get view => SizedBox(
    key: globalKey,
    child: Scaffold(
      body: ControlledSliversBuilder<JobSeekerChooseOccupationController>(
        sliversBuilder: (context, controller) => [
          SillySliverAppBar(
            label: 'Choose Your Job',
            actions: [
              PrimaryElevatedButton.round(
                onPressed: controller.onNavigateHome,
                minWidth: 50,
                child: const Icon(Icons.home),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final occupation = controller.occupations[index];
                  return CategoryCard(
                    key: ValueKey("$index${controller.selectedIndex==index}"),
                    Category(occupation.image, occupation.title),
                    onTap: () => controller.onSelectOccupation(index),
                    selected: controller.selectedIndex==index,
                  );
                },
                childCount: controller.occupations.length,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: ControlledWidgetBuilder<JobSeekerChooseOccupationController>(
        builder: (context, controller) {
          return NextFloatingActionButton(
            onPressed: controller.onNavigateNext,
          );
        },
      ),
    ),
  );
}