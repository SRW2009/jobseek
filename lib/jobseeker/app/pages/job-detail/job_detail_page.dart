
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/domain/entities/job.dart';

import 'job_detail_controller.dart';

class JobSeekerJobDetailPage extends View {
  final Job job;

  const JobSeekerJobDetailPage(this.job, {super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerJobDetailState();
}

class _JobSeekerJobDetailState extends ViewState<JobSeekerJobDetailPage, JobSeekerJobDetailController> {
  _JobSeekerJobDetailState()
      : super(JobSeekerJobDetailController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}