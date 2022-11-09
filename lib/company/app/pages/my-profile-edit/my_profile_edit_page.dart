
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'my_profile_edit_controller.dart';

class CompanyMyProfileEditPage extends View {
  const CompanyMyProfileEditPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyMyProfileEditState();
}

class _CompanyMyProfileEditState extends ViewState<CompanyMyProfileEditPage, CompanyMyProfileEditController> {
  _CompanyMyProfileEditState()
      : super(CompanyMyProfileEditController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}