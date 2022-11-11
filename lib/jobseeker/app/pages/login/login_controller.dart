
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/route.dart';

class JobSeekerLoginController extends Controller {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initListeners() {}

  void onLogin() {
    if (formKey.currentState?.validate() ?? false) {
      String email = emailController.text;
      String password = passwordController.text;

      Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.home);
    } else {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Please fill in your username and password.')));
    }
  }

  void onNavigateBack() => Navigator.pushReplacementNamed(getContext(), SharedRoute.mainMenu);
  void onNavigateRegister() => Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.register);
}