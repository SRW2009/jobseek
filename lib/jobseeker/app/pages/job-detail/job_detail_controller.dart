
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

import 'job_detail_page.dart';
import 'job_detail_presenter.dart';

class JobSeekerJobDetailController extends DataController<Job, JobSeekerJobDetailPage> {

  final JobSeekerJobDetailPresenter _presenter;
  JobSeekerJobDetailController(jobRepo)
      : _presenter = JobSeekerJobDetailPresenter(jobRepo);

  @override
  void initListeners() {
    _presenter.getJobDetailCallback = getDataCallback;
  }

  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getJobDetail(widget?.jobId??0);
  }

  void onSearch() {}

  void onApplyJob(Job job) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.jobApply, arguments: job);
  }
}