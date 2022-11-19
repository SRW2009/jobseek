
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:jobseek/company/app/route.dart';

class CompanyCompleteProfileController extends Controller {
  final GlobalKey<FormState> formKey = GlobalKey();
  final descController = TextEditingController();
  final webController = TextEditingController();
  final cpController = TextEditingController();

  @override
  void initListeners() {}

  void onSubmit() {
    if (formKey.currentState?.validate() ?? false) {
      final description = descController.text;
      final website = webController.text;
      final contactPerson = cpController.text;

      Navigator.popUntil(getContext(), (route) => route.settings.name==CompanyRoute.home);
    } else {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Please fill in all field.')));
    }
  }

  void onCancel() {
    Navigator.pop(getContext());
  }
}