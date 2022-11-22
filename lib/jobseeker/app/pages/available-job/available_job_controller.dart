
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

import 'available_job_page.dart';
import 'available_job_presenter.dart';

class JobSeekerAvailableJobController extends DataController<List<Job>, JobSeekerAvailableJobPage> {
  
  final JobSeekerAvailableJobPresenter _presenter;
  JobSeekerAvailableJobController(jobRepo)
      : _presenter = JobSeekerAvailableJobPresenter(jobRepo);

  Job? _job;
  int selectedIndex = -1;

  @override
  void initListeners() {
    _presenter.getJobsCallback = getDataCallback;
  }

  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getJobs(widget?.occupationId??0);
  }

  void onSearch() {}

  onSelectJob(int i) {
    _job = data?[i];
    selectedIndex = i;
    refreshUI();
  }

  onNavigateNext() {
    if (_job == null) {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Select job first.')));
      return;
    }

    Navigator.pushNamed(getContext(), JobSeekerRoute.jobDetail, arguments: _job!.id);
  }
}