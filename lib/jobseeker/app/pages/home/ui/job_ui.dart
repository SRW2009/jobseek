
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/pages/home/home_controller.dart';
import 'package:jobseek/shared/app/widgets/default_tile.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';

class JobSeekerHomeUIJob extends StatefulWidget {
  final JobSeekerHomeController controller;

  const JobSeekerHomeUIJob(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerUIJobState();
}

class _JobSeekerUIJobState extends State<JobSeekerHomeUIJob> {

  @override
  Widget build(BuildContext context) => CustomScrollView(
    slivers: [
      const PrimarySliverAppBar(
        label: 'Job Recommendation',
        implyLeading: false,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final job = widget.controller.jobs[index];
            return DefaultTile(
              title: job.occupation,
              subtitle: job.companyName,
              // TODO: fetch image from network
              image: Image.asset(job.image, fit: BoxFit.fitHeight),
              onTap: () => widget.controller.onNavigateJobDetail(job),
            );
          },
          childCount: widget.controller.jobs.length,
        ),
      ),
    ],
  );
}