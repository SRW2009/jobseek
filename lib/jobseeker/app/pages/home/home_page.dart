
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'home_controller.dart';

class JobSeekerHomePage extends View {
  const JobSeekerHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerHomeState();
}

class _JobSeekerHomeState extends ViewState<JobSeekerHomePage, JobSeekerHomeController> {
  _JobSeekerHomeState()
      : super(JobSeekerHomeController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}