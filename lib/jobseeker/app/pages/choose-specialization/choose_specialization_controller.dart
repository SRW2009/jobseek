
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:flutter/material.dart';

class JobSeekerChooseSpecializationController extends Controller {
  // TODO: fetch data from internet
  final specializations = d.specializations;

  Specialization? _specialization;
  int selectedIndex = -1;

  @override
  void initListeners() {}

  void onSelectSpecialization(int i) {
    _specialization = specializations[i];
    selectedIndex = i;
    refreshUI();
  }

  void onNavigateNext() {
    if (_specialization == null) {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Select specialization first.')));
      return;
    }

    Navigator.pushNamed(getContext(), JobSeekerRoute.chooseOccupation);
  }
}