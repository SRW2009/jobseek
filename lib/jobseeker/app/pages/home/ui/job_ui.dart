
import 'package:flutter/material.dart';
import 'package:jobseek/shared/app/widgets/primary_sliver_appbar.dart';
import 'package:jobseek/shared/app/widgets/splash_tile.dart';

import '../home_controller.dart';

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
            final job = widget.controller.data?.jobs?[index];
            return SplashTile(
              title: job!.occupation,
              subtitle: job.companyName,
              image: Image.network(job.image, fit: BoxFit.fitHeight),
              onTap: () => widget.controller.onNavigateJobDetail(job),
            );
          },
          childCount: widget.controller.data?.jobs?.length??0,
        ),
      ),
    ],
  );
}