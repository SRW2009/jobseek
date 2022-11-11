
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/company/app/route.dart';
import 'package:jobseek/jobseeker/app/route.dart';

class MainMenuController extends Controller {

  @override
  void initListeners() {}

  void onCompanyOption() {
    Navigator.pushReplacementNamed(getContext(), CompanyRoute.login);
  }

  void onJobSeekerOption() {
    Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.login);
  }
}