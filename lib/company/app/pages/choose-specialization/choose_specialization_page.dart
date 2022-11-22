
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/data/repositories/specialization_repo.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/next_fab.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/specialization_card.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';

import 'choose_specialization_controller.dart';

class CompanyChooseSpecializationPage extends View {
  const CompanyChooseSpecializationPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyChooseSpecializationState();
}

class _CompanyChooseSpecializationState extends ViewState<CompanyChooseSpecializationPage, CompanyChooseSpecializationController> {
  _CompanyChooseSpecializationState()
      : super(CompanyChooseSpecializationController(CompanySpecializationRepository()));

  @override
  Widget get view => SizedBox(
    key: globalKey,
    child: Scaffold(
      body: DataControlledSliversBuilder<CompanyChooseSpecializationController, List<Specialization>>(
        sliversBuilder: (context, controller, data) => [
          const PrimarySliverAppBar(
            label: 'Choose Company Specialization',
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
                  final specialization = data[index];
                  return SpecializationCard(
                    key: ValueKey("$index${controller.selectedIndex==index}"),
                    item: specialization,
                    onTap: () => controller.onSelectSpecialization(index),
                    selected: controller.selectedIndex==index,
                  );
                },
                childCount: data.length,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: ControlledWidgetBuilder<CompanyChooseSpecializationController>(
        builder: (context, controller) {
          return NextFloatingActionButton(
            onPressed: controller.onNavigateNext,
          );
        },
      ),
    ),
  );
}