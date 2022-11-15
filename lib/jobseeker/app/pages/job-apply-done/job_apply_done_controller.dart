
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';

class JobSeekerJobApplyDoneController extends Controller {

  @override
  void initListeners() {}

  void onNavigateHome() {
    Navigator.popUntil(getContext(), (route) => route.settings.name==JobSeekerRoute.home);
  }
}