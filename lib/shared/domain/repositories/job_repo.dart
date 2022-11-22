
import 'package:jobseek/shared/domain/entities/job.dart';

abstract class JobRepo {
  Future<List<Job>> getJobs(int occupationId);
  Future<Job> getJobDetail(int jobId);
}