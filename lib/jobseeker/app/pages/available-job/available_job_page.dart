
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

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
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}