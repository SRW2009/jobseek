
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/shared/app/route.dart';

class JobSeekerRegisterController extends Controller {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();
  final ValueNotifier<bool?> agreementNotifier = ValueNotifier(false);

  @override
  void initListeners() {}

  void onRegister() {

    if (formKey.currentState?.validate() ?? false) {
      final name = nameController.text;
      final email = emailController.text;
      final phone = phoneController.text;
      final city = cityController.text;
      final password = passwordController.text;
      final cPassword = cPasswordController.text;

      Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.home);
    } else {
      if (!(agreementNotifier.value ?? false)) {
        ScaffoldMessenger.of(getContext()).showSnackBar(
            const SnackBar(content: Text('You have to agree with our Privacy Policy and Terms of Service first.')));
        return;
      }

      ScaffoldMessenger.of(getContext()).showSnackBar(
          const SnackBar(content: Text('Please fill in every form field.')));
    }
  }

  void doVibrate() {
    HapticFeedback.vibrate();
  }

  void onNavigateBack() => Navigator.pushReplacementNamed(getContext(), SharedRoute.mainMenu);
  void onNavigateLogin() => Navigator.pushReplacementNamed(getContext(), JobSeekerRoute.login);
}