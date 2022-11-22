
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/usecases/get_job_detail.dart';

class JobSeekerJobDetailPresenter extends Presenter {
  late Function(Job?) getJobDetailCallback;

  final GetJobDetailUseCase _getJobDetailUseCase;
  JobSeekerJobDetailPresenter(jobRepo)
      : _getJobDetailUseCase = GetJobDetailUseCase(jobRepo);

  void getJobDetail(int jobId) => _getJobDetailUseCase
      .execute(_GetJobDetailObserver(this), jobId);

  @override
  void dispose() {
    _getJobDetailUseCase.dispose();
  }
}

class _GetJobDetailObserver implements Observer<Job> {
  final JobSeekerJobDetailPresenter _presenter;

  _GetJobDetailObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getJobDetailCallback(null);
  }

  @override
  void onNext(Job? response) {
    _presenter.getJobDetailCallback(response);
  }
}