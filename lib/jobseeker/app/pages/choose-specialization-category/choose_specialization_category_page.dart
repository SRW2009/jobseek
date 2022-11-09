
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'choose_specialization_category_controller.dart';

class JobSeekerChooseSpecializationCategoryPage extends View {
  const JobSeekerChooseSpecializationCategoryPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobSeekerChooseSpecializationCategoryState();
}

class _JobSeekerChooseSpecializationCategoryState extends ViewState<JobSeekerChooseSpecializationCategoryPage, JobSeekerChooseSpecializationCategoryController> {
  _JobSeekerChooseSpecializationCategoryState()
      : super(JobSeekerChooseSpecializationCategoryController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}