
import 'package:flutter/material.dart';
import 'package:jobseek/company/app/route.dart';
import 'package:jobseek/company/data/dummies.dart' as d;
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/notification.dart' as n;
import 'package:jobseek/shared/domain/entities/specialization.dart';

import 'home_data.dart';
import 'home_page.dart';
import 'home_presenter.dart';

class CompanyHomeController extends DataController<CompanyHomeData, CompanyHomePage> {
  final pageController = PageController();
  int activePageIndex = 0;

  final CompanyHomePresenter _presenter;
  CompanyHomeController(applierRepo, specializationRepo, userRepo)
      : _presenter = CompanyHomePresenter(applierRepo, specializationRepo, userRepo);

  final List<n.Notification<Applier>> notifications = d.notifications;

  @override
  void initListeners() {
    _presenter.getAppliersCallback = (appliers) {
      if (appliers==null) {
        setDataStateError();
      } else {
        data ??= CompanyHomeData();
        data!.appliers=appliers;
        if (data?.specializations!=null&&data?.profile!=null) setDataStateSuccess();
      }
    };
    _presenter.getSpecializationsCallback = (specializations) {
      if (specializations==null) {
        setDataStateError();
      } else {
        data ??= CompanyHomeData();
        data!.specializations=specializations;
        if (data?.appliers!=null&&data?.profile!=null) setDataStateSuccess();
      }
    };
    _presenter.getProfileCallback = (user) {
      if (user==null) {
        setDataStateError();
      } else {
        data ??= CompanyHomeData();
        data!.profile=user;
        if (data?.appliers!=null&&data?.specializations!=null) setDataStateSuccess();
      }
    };
  }
  
  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getAppliers(1);
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

  void onNavigateApplierDetail(Applier applier) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.myProfile, arguments: applier);
  }

  void onNavigateMyProfile() {
    Navigator.pushNamed(getContext(), CompanyRoute.myProfile);
  }

  void onNavigateIdentityVerification() {
    Navigator.pushNamed(getContext(), CompanyRoute.identityVerification);
  }

  void onSignOut() {
    Navigator.pushReplacementNamed(getContext(), CompanyRoute.login);
  }
}