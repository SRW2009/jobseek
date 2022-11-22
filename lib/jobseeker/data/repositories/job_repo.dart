
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/data/models/job-detail.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/repositories/job_repo.dart';
import 'package:jobseek/shared/data/models/job.dart';

class JobSeekerJobRepository implements JobRepo {
  @override
  Future<List<Job>> getJobs(int occupationId) async {
    //TODO: change static id to dynamic id
    final response = await Http.getList('/api/job-vacancies/1');
    return response.map((e) => JobModel.fromJson(e).toEntity()).toList();
  }

  @override
  Future<Job> getJobDetail(int jobId) async {
    //TODO: change static id to dynamic id
    final response = await Http.get('/api/job-vacancies/detail/1');
    print(response);
    return JobDetailModel.fromJson(response).toEntity();
  }
}