
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'job_apply_done_controller.dart';

class JobSeekerJobApplyDonePage extends View {
  const JobSeekerJobApplyDonePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerJobApplyDoneState();
}

class _JobSeekerJobApplyDoneState extends ViewState<JobSeekerJobApplyDonePage, JobSeekerJobApplyDoneController> {
  _JobSeekerJobApplyDoneState()
      : super(JobSeekerJobApplyDoneController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}