
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'login_controller.dart';

class JobSeekerLoginPage extends View {
  const JobSeekerLoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerLoginState();
}

class _JobSeekerLoginState extends ViewState<JobSeekerLoginPage, JobSeekerLoginController> {
  _JobSeekerLoginState()
      : super(JobSeekerLoginController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}