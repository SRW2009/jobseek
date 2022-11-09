
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'register_controller.dart';

class CompanyRegisterPage extends View {
  const CompanyRegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyRegisterState();
}

class _CompanyRegisterState extends ViewState<CompanyRegisterPage, CompanyRegisterController> {
  _CompanyRegisterState()
      : super(CompanyRegisterController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}