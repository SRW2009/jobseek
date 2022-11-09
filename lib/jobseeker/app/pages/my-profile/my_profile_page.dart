
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'my_profile_controller.dart';

class JobSeekerMyProfilePage extends View {
  const JobSeekerMyProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerMyProfileState();
}

class _JobSeekerMyProfileState extends ViewState<JobSeekerMyProfilePage, JobSeekerMyProfileController> {
  _JobSeekerMyProfileState()
      : super(JobSeekerMyProfileController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}