
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'my_profile_controller.dart';

class CompanyMyProfilePage extends View {
  const CompanyMyProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyMyProfileState();
}

class _CompanyMyProfileState extends ViewState<CompanyMyProfilePage, CompanyMyProfileController> {
  _CompanyMyProfileState()
      : super(CompanyMyProfileController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}