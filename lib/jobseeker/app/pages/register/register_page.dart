
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'register_controller.dart';

class JobSeekerRegisterPage extends View {
  const JobSeekerRegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerRegisterState();
}

class _JobSeekerRegisterState extends ViewState<JobSeekerRegisterPage, JobSeekerRegisterController> {
  _JobSeekerRegisterState()
      : super(JobSeekerRegisterController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}