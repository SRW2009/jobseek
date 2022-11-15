
import 'package:flutter/material.dart';
import 'package:jobseek/jobseeker/app/pages/available-job/available_job_page.dart';
import 'package:jobseek/jobseeker/app/pages/choose-specialization/choose_specialization_page.dart';
import 'package:jobseek/jobseeker/app/pages/choose-occupation/choose_occupation_page.dart';
import 'package:jobseek/jobseeker/app/pages/home/home_page.dart';
import 'package:jobseek/jobseeker/app/pages/identity-verification/identity_verification_page.dart';
import 'package:jobseek/jobseeker/app/pages/job-apply-done/job_apply_done_page.dart';
import 'package:jobseek/jobseeker/app/pages/job-apply/job_apply_page.dart';
import 'package:jobseek/jobseeker/app/pages/job-detail/job_detail_page.dart';
import 'package:jobseek/jobseeker/app/pages/login/login_page.dart';
import 'package:jobseek/jobseeker/app/pages/my-files/my_files_page.dart';
import 'package:jobseek/jobseeker/app/pages/my-profile/my_profile_page.dart';
import 'package:jobseek/jobseeker/app/pages/register/register_page.dart';
import 'package:jobseek/shared/domain/entities/job.dart';

class JobSeekerRoute extends MaterialPageRoute {
  static const String _prefix = '/jobseeker';

  static const String register = '$_prefix/register';
  static const String home = '$_prefix/';
  static const String myProfile = '$_prefix/my/profile';
  static const String myFiles = '$_prefix/my/files';
  static const String identityVerification = '$_prefix/identity-verification';
  static const String chooseSpecialization = '$_prefix/choose/specialization';
  static const String chooseOccupation = '$_prefix/choose/occupation';
  static const String availableJob = '$_prefix/available-job';
  static const String jobDetail = '$_prefix/job';
  static const String jobApply = '$_prefix/job/apply';
  static const String jobApplyDone = '$_prefix/job/apply/done';
  static const String login = '$_prefix/login';

  JobSeekerRoute(RouteSettings settings)
      : super(settings: settings, builder: (ctx) => _getPage(settings));

  static Widget _getPage(RouteSettings settings) {
    switch (settings.name) {
      case register: return const JobSeekerRegisterPage();
      case home: return const JobSeekerHomePage();
      case myProfile: return const JobSeekerMyProfilePage();
      case myFiles: return const JobSeekerMyFilesPage();
      case identityVerification: return const JobSeekerIdentityVerificationPage();
      case chooseSpecialization: return const JobSeekerChooseSpecializationPage();
      case chooseOccupation: return const JobSeekerChooseOccupationPage();
      case availableJob: return const JobSeekerAvailableJobPage();
      case jobDetail: return JobSeekerJobDetailPage(settings.arguments! as Job);
      case jobApply: return JobSeekerJobApplyPage(settings.arguments! as Job);
      case jobApplyDone: return JobSeekerJobApplyDonePage(settings.arguments! as String);
      case login: default: return const JobSeekerLoginPage();
    }
  }
}