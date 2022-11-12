
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/app/route.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;
import 'package:jobseek/jobseeker/domain/entities/job.dart';

class JobSeekerHomeUINotificationController extends Controller {
  // TODO: fetch data from internet
  final notifications = d.notifications;

  @override
  void initListeners() {}

  void onNavigateDetail(Job job) {
    Navigator.pushNamed(getContext(), JobSeekerRoute.jobDetail, arguments: job);
  }
}