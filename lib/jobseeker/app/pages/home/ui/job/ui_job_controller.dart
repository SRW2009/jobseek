
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/jobseeker/domain/entities/job.dart';
import 'package:jobseek/jobseeker/data/dummies.dart' as d;

class JobSeekerHomeUIJobController extends Controller {
  // TODO: fetch data from internet
  final List<Job> jobs = d.jobs;

  @override
  void initListeners() {}

  // TODO: implement on navigate job detail
  void onNavigateJobDetail(Job job) {

  }
}