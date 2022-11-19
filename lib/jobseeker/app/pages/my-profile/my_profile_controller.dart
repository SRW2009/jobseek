
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/pages/my-profile/my_profile_page.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/occupation.dart';

class JobSeekerMyProfileController extends Controller {
  Applier? applier;
  bool editable = false;

  void _loadProfile() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      final page = getContext().findAncestorWidgetOfExactType<JobSeekerMyProfilePage>();
      applier = page?.applier ?? const Applier(
          Assets.logo,
          'Abyan Athar',
          'abyanathar@gmail.com',
          '08212322XXXX',
          'Information System (Bachelor Degree) Kalimantan Institute of Technology 2020 - 2024',
          Occupation.none()
      );
      editable = page?.applier == null;
      refreshUI();
    });
  }

  @override
  void initListeners() {
    _loadProfile();
  }

  void onEditImage() {}

  void onEditEducation() {}

  void onDeleteEducation() {}

  void onHire() {}
}