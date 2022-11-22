
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/route.dart';

import 'login_presenter.dart';

class JobSeekerLoginController extends Controller {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final JobSeekerLoginPresenter _presenter;
  JobSeekerLoginController(authRepo)
      : _presenter = JobSeekerLoginPresenter(authRepo);

  bool loading = false;

  void _login(bool state) {
    if (state) {
      Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.home);
    } else {
      loading = false;
      refreshUI();

      ScaffoldMessenger.of(getContext())
          .showSnackBar(const SnackBar(content: Text('Login failed')));
    }
  }

  @override
  void initListeners() {
    _presenter.authenticationCallback = _login;
  }

  void onLogin() {
    if (formKey.currentState?.validate() ?? false) {
      String email = emailController.text;
      String password = passwordController.text;

      loading = true;
      refreshUI();
      _presenter.authenticate(email, password);
    } else {
      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Please fill in your username and password.')));
    }
  }

  void onNavigateBack() => Navigator.pushReplacementNamed(getContext(), SharedRoute.mainMenu);
  void onNavigateRegister() => Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.register);
}