
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/default_tile.dart';
import 'package:jobseek/shared/app/widgets/next_fab.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

import 'available_job_controller.dart';

class JobSeekerAvailableJobPage extends View {
  const JobSeekerAvailableJobPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerAvailableJobState();
}

class _JobSeekerAvailableJobState extends ViewState<JobSeekerAvailableJobPage, JobSeekerAvailableJobController> {
  _JobSeekerAvailableJobState()
      : super(JobSeekerAvailableJobController());

  @override
  Widget get view => SizedBox(
    key: globalKey,
    child: Scaffold(
      body: ControlledSliversBuilder<JobSeekerAvailableJobController>(
        sliversBuilder: (context, controller) => [
          PrimarySliverAppBar(
            label: 'Available Jobs',
            actions: [
              IconButton(onPressed: controller.onSearch, icon: const Icon(Icons.search)),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final job = controller.jobs[index];
                return DefaultTile(
                  key: ValueKey("$index${controller.selectedIndex==index}"),
                  title: job.occupation,
                  subtitle: job.companyName,
                  // TODO: fetch image from network
                  image: Image.asset(job.image, fit: BoxFit.fitHeight),
                  onTap: () => controller.onSelectJob(index),
                  selected: controller.selectedIndex==index,
                );
              },
              childCount: controller.jobs.length,
            ),
          ),
        ],
      ),
      floatingActionButton: ControlledWidgetBuilder<JobSeekerAvailableJobController>(
        builder: (context, controller) {
          return NextFloatingActionButton(
            onPressed: controller.onNavigateNext,
          );
        },
      ),
    ),
  );
}