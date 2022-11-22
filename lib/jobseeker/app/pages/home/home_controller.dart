
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/pages/home/home_page.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/entities/notification.dart' as n;
import 'package:jobseek/shared/domain/entities/specialization.dart';

import 'home_data.dart';
import 'home_presenter.dart';

class JobSeekerHomeController extends DataController<JobSeekerHomeData, JobSeekerHomePage> {
  final pageController = PageController();
  int activePageIndex = 0;

  final JobSeekerHomePresenter _presenter;
  JobSeekerHomeController(jobRepo, specializationRepo, userRepo)
      : _presenter = JobSeekerHomePresenter(jobRepo, specializationRepo, userRepo);

  final List<n.Notification<Job>> notifications = d.notifications;

  @override
  void initListeners() {
    _presenter.getJobsCallback = (jobs) {
      if (jobs==null) {
        setDataStateError();
      } else {
        data ??= JobSeekerHomeData();
        data!.jobs=jobs;
        if (data?.specializations!=null&&data?.profile!=null) setDataStateSuccess();
      }
    };
    _presenter.getSpecializationsCallback = (specializations) {
      if (specializations==null) {
        setDataStateError();
      } else {
        data ??= JobSeekerHomeData();
        data!.specializations=specializations;
        if (data?.jobs!=null&&data?.profile!=null) setDataStateSuccess();
      }
    };
    _presenter.getProfileCallback = (user) {
      if (user==null) {
        setDataStateError();
      } else {
        data ??= JobSeekerHomeData();
        data!.profile=user;
        if (data?.jobs!=null&&data?.specializations!=null) setDataStateSuccess();
      }
    };
  }

  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getJobs(1);
    _presenter.getSpecializations();
    _presenter.getProfile(1);
  }

  void onSelectNavItem(int index) {
    activePageIndex = index;
    pageController.animateToPage(activePageIndex, duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
    refreshUI();
  }

  void onSearchChanged(String query) {}

  void onSelectCategory(Specialization category) {}

  void onNavigateJobDetail(Job job) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.jobDetail, arguments: job.id);
  }

  void onNavigateMyProfile() {
    Navigator.pushNamed(getContext(), JobSeekerRoute.myProfile);
  }

  void onNavigateIdentityVerification() {
    Navigator.pushNamed(getContext(), JobSeekerRoute.identityVerification);
  }

  void onNavigateMyFiles() {
    Navigator.pushNamed(getContext(), JobSeekerRoute.myFiles);
  }

  void onSignOut() {
    Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.login);
  }
}