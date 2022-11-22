
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/usecases/get_jobs.dart';

class JobSeekerAvailableJobPresenter extends Presenter {
  late Function(List<Job>?) getJobsCallback;

  final GetJobsUseCase _getJobsUseCase;
  JobSeekerAvailableJobPresenter(jobRepo)
      : _getJobsUseCase = GetJobsUseCase(jobRepo);

  void getJobs(int specializationId) => _getJobsUseCase
      .execute(_GetJobsObserver(this), specializationId);

  @override
  void dispose() {
    _getJobsUseCase.dispose();
  }
}

class _GetJobsObserver implements Observer<List<Job>> {
  final JobSeekerAvailableJobPresenter _presenter;

  _GetJobsObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getJobsCallback(null);
  }

  @override
  void onNext(List<Job>? response) {
    _presenter.getJobsCallback(response);
  }
}