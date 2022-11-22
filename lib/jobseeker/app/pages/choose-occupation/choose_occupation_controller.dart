
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/pages/choose-occupation/choose_occupation_page.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/widgets/common/data_controller.dart';
import 'package:jobseek/shared/domain/entities/occupation.dart';

import 'choose_occupation_presenter.dart';

class JobSeekerChooseOccupationController extends DataController<List<Occupation>, JobSeekerChooseOccupationPage> {
  
  final JobSeekerChooseOccupationPresenter _presenter;
  JobSeekerChooseOccupationController(occupationRepo)
      : _presenter = JobSeekerChooseOccupationPresenter(occupationRepo);

  Occupation? _occupation;
  int selectedIndex = -1;

  @override
  void initListeners() {
    _presenter.getOccupationsCallback = getDataCallback;
  }

  @override
  void onReload() {
    setDataStateLoading();
    _presenter.getOccupations(widget?.specializationId??0);
  }

  void onSelectOccupation(int i) {
    _occupation = data?[i];
    selectedIndex = i;
    refreshUI();
  }

  void onNavigateNext() {
    if (_occupation == null) {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Select occupation first.')));
      return;
    }

    Navigator.pushNamed(getContext(), JobSeekerRoute.availableJob, arguments: _occupation!.id);
  }

  void onNavigateHome() {
    Navigator.popUntil(getContext(), (route) => route.settings.name==JobSeekerRoute.home);
  }
}