
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'choose_specialization_category_controller.dart';

class CompanyChooseSpecializationCategoryPage extends View {
  const CompanyChooseSpecializationCategoryPage({super.key});

  @override
  State<StatefulWidget> createState() => _CompanyChooseSpecializationCategoryState();
}

class _CompanyChooseSpecializationCategoryState extends ViewState<CompanyChooseSpecializationCategoryPage, CompanyChooseSpecializationCategoryController> {
  _CompanyChooseSpecializationCategoryState()
      : super(CompanyChooseSpecializationCategoryController());

  @override
  //TODO: Implement view
  Widget get view => throw UnimplementedError();
}