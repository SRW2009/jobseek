
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/repositories/job_repo.dart';

import 'base/base_use_case.dart';

class GetJobDetailUseCase extends BaseUseCase<Job, int> {

  GetJobDetailUseCase(JobRepo repo) : super((param) => repo.getJobDetail(param));
}