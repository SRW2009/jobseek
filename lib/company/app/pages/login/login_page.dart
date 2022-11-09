
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'login_controller.dart';

class CompanyLoginPage extends View {
  const CompanyLoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyLoginState();
}

class _CompanyLoginState extends ViewState<CompanyLoginPage, CompanyLoginController> {
  _CompanyLoginState()
      : super(CompanyLoginController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}