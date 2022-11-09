
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'my_files_controller.dart';

class JobSeekerMyFilesPage extends View {
  const JobSeekerMyFilesPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerMyFilesState();
}

class _JobSeekerMyFilesState extends ViewState<JobSeekerMyFilesPage, JobSeekerMyFilesController> {
  _JobSeekerMyFilesState()
      : super(JobSeekerMyFilesController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}