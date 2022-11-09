
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'home_controller.dart';

class CompanyHomePage extends View {
  const CompanyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyHomeState();
}

class _CompanyHomeState extends ViewState<CompanyHomePage, CompanyHomeController> {
  _CompanyHomeState()
      : super(CompanyHomeController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}