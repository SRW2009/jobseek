
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/repositories/job_repo.dart';

import 'base/base_use_case.dart';

class GetJobsUseCase extends BaseUseCase<List<Job>, int> {

  GetJobsUseCase(JobRepo repo) : super((param) => repo.getJobs(param));
}