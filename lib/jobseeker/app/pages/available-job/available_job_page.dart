
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/data/repositories/job_repo.dart';
import 'package:jobseek/shared/app/widgets/common/data_controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/next_fab.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/splash_tile.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

import 'available_job_controller.dart';

class JobSeekerAvailableJobPage extends View {
  final int occupationId;

  const JobSeekerAvailableJobPage(this.occupationId, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerAvailableJobState();
}

class _JobSeekerAvailableJobState extends ViewState<JobSeekerAvailableJobPage, JobSeekerAvailableJobController> {
  _JobSeekerAvailableJobState()
      : super(JobSeekerAvailableJobController(JobSeekerJobRepository()));

  @override
  Widget get view => SizedBox(
    key: globalKey,
    child: Scaffold(
      body: DataControlledSliversBuilder<JobSeekerAvailableJobController, List<Job>>(
        sliversBuilder: (context, controller, data) => [
          PrimarySliverAppBar(
            label: 'Available Jobs',
            actions: [
              IconButton(onPressed: controller.onSearch, icon: const Icon(Icons.search)),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final job = data[index];
                return SplashTile(
                  key: ValueKey("$index${controller.selectedIndex==index}"),
                  title: job.occupation,
                  subtitle: job.companyName,
                  image: Image.network(job.image, fit: BoxFit.fitHeight),
                  onTap: () => controller.onSelectJob(index),
                  selected: controller.selectedIndex==index,
                );
              },
              childCount: data.length,
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