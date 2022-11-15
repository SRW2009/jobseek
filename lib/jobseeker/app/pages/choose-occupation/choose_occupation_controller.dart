
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/shared/domain/entities/occupation.dart';

class JobSeekerChooseOccupationController extends Controller {
  // TODO: fetch data from internet
  final occupations = d.occupations;

  Occupation? _occupation;
  int selectedIndex = -1;

  @override
  void initListeners() {}

  void onSelectOccupation(int i) {
    _occupation = occupations[i];
    selectedIndex = i;
    refreshUI();
  }

  void onNavigateNext() {
    if (_occupation == null) {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Select occupation first.')));
      return;
    }

    Navigator.pushNamed(getContext(), JobSeekerRoute.availableJob);
  }

  void onNavigateHome() {
    Navigator.popUntil(getContext(), (route) => route.settings.name==JobSeekerRoute.home);
  }
}