
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/app/widgets/default_tile.dart';
import 'package:jobseek/shared/app/widgets/controlled_slivers_builder.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

import 'ui_job_controller.dart';

class JobSeekerHomeUIJobPage extends View {
  const JobSeekerHomeUIJobPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUIJobState();
}

class _JobSeekerUIJobState extends ViewState<JobSeekerHomeUIJobPage, JobSeekerHomeUIJobController> {
  _JobSeekerUIJobState() : super(JobSeekerHomeUIJobController());

  @override
  Widget get view => ControlledSliversBuilder<JobSeekerHomeUIJobController>(
    sliversBuilder: (context, controller) => [
      const PrimarySliverAppBar(
        label: 'Job Recommendation',
        implyLeading: false,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final job = controller.jobs[index];
            return DefaultTile(
              title: job.occupation,
              subtitle: job.companyName,
              // TODO: fetch image from network
              image: Image.asset(job.image, fit: BoxFit.fitHeight),
              onTap: () => controller.onNavigateJobDetail(job),
            );
          },
          childCount: controller.jobs.length,
        ),
      ),
    ],
  );
}