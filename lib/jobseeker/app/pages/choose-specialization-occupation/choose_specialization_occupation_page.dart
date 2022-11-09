
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'choose_specialization_occupation_controller.dart';

class JobSeekerChooseSpecializationOccupationPage extends View {
  const JobSeekerChooseSpecializationOccupationPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerChooseSpecializationOccupationState();
}

class _JobSeekerChooseSpecializationOccupationState extends ViewState<JobSeekerChooseSpecializationOccupationPage, JobSeekerChooseSpecializationOccupationController> {
  _JobSeekerChooseSpecializationOccupationState()
      : super(JobSeekerChooseSpecializationOccupationController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}