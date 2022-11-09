
import 'package:flutter/material.dart';
import 'package:jobseek/company/app/pages/choose-specialization-category/choose_specialization_category_page.dart';
import 'package:jobseek/company/app/pages/complete-profile/complete_profile_page.dart';
import 'package:jobseek/company/app/pages/home/home_page.dart';
import 'package:jobseek/company/app/pages/identity-verification/identity_verification_page.dart';
import 'package:jobseek/company/app/pages/login/login_page.dart';
import 'package:jobseek/company/app/pages/my-profile-edit/my_profile_edit_page.dart';
import 'package:jobseek/company/app/pages/my-profile/my_profile_page.dart';
import 'package:jobseek/company/app/pages/register/register_page.dart';

class CompanyRoute extends MaterialPageRoute {
  static const String _prefix = '/company';

  static const String register = '$_prefix/register';
  static const String home = '$_prefix/';
  static const String myProfile = '$_prefix/my/profile';
  static const String myProfileEdit = '$_prefix/my/profile/edit';
  static const String identityVerification = '$_prefix/identity-verification';
  static const String chooseSpecializationCategory = '$_prefix/choose-specialization/category';
  static const String completeProfile = '$_prefix/complete-profile';
  static const String login = '$_prefix/login';

  CompanyRoute(RouteSettings settings)
      : super(settings: settings, builder: (ctx) => _getPage(settings));

  static Widget _getPage(RouteSettings settings) {
    switch (settings.name) {
      case register: return const CompanyRegisterPage();
      case home: return const CompanyHomePage();
      case myProfile: return const CompanyMyProfilePage();
      case myProfileEdit: return const CompanyMyProfileEditPage();
      case identityVerification: return const CompanyIdentityVerificationPage();
      case chooseSpecializationCategory: return const CompanyChooseSpecializationCategoryPage();
      case completeProfile: return const CompanyCompleteProfilePage();
      case login: default: return const CompanyLoginPage();
    }
  }
}