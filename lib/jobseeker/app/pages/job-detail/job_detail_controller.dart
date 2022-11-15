
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

class JobSeekerJobDetailController extends Controller {

  @override
  void initListeners() {}

  void onSearch() {}

  void onApplyJob(Job job) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.jobApply, arguments: job);
  }
}