
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';

import 'choose_specialization_page.dart';
import 'choose_specialization_presenter.dart';

class JobSeekerChooseSpecializationController extends DataController<List<Specialization>, JobSeekerChooseSpecializationPage> {

  final JobSeekerChooseSpecializationPresenter _presenter;
  JobSeekerChooseSpecializationController(specializationRepo)
      : _presenter = JobSeekerChooseSpecializationPresenter(specializationRepo);

  Specialization? _specialization;
  int selectedIndex = -1;

  @override
  void initListeners() {
    _presenter.getSpecializationsCallback = getDataCallback;
  }

  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getSpecializations();
  }

  void onSelectSpecialization(int i) {
    _specialization = data?[i];
    selectedIndex = i;
    refreshUI();
  }

  void onNavigateNext() {
    if (_specialization == null) {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Select specialization first.')));
      return;
    }

    Navigator.pushNamed(getContext(), JobSeekerRoute.chooseOccupation, arguments: _specialization!.id);
  }
}