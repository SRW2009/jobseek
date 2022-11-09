
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'job_apply_controller.dart';

class JobSeekerJobApplyPage extends View {
  const JobSeekerJobApplyPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerJobApplyState();
}

class _JobSeekerJobApplyState extends ViewState<JobSeekerJobApplyPage, JobSeekerJobApplyController> {
  _JobSeekerJobApplyState()
      : super(JobSeekerJobApplyController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}