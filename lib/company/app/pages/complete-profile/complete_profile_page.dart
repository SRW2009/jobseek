
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'complete_profile_controller.dart';

class CompanyCompleteProfilePage extends View {
  const CompanyCompleteProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyCompleteProfileState();
}

class _CompanyCompleteProfileState extends ViewState<CompanyCompleteProfilePage, CompanyCompleteProfileController> {
  _CompanyCompleteProfileState()
      : super(CompanyCompleteProfileController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}