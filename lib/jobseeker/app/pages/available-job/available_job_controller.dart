
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/domain/entities/job.dart';

class JobSeekerAvailableJobController extends Controller {
  // TODO: fetch data from internet
  final jobs = d.jobs;

  Job? _job;
  int selectedIndex = -1;

  @override
  void initListeners() {}

  void onSearch() {}

  onSelectJob(int i) {
    _job = jobs[i];
    selectedIndex = i;
    refreshUI();
  }

  onNavigateNext() {
    if (_job == null) {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Select job first.')));
      return;
    }

    Navigator.pushNamed(getContext(), JobSeekerRoute.jobDetail, arguments: _job);
  }
}