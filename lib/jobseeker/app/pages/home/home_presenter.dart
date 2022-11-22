
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/job.dart';
import 'package:jobseek/shared/domain/entities/jobseeker.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:jobseek/shared/domain/usecases/get_jobs.dart';
import 'package:jobseek/shared/domain/usecases/get_specializations.dart';
import 'package:jobseek/shared/domain/usecases/get_user_detail.dart';

class JobSeekerHomePresenter extends Presenter {
  late Function(List<Job>?) getJobsCallback;
  late Function(List<Specialization>?) getSpecializationsCallback;
  late Function(JobSeeker?) getProfileCallback;
  
  final GetJobsUseCase _getJobsUseCase;
  final GetSpecializationsUseCase _getSpecializationsUseCase;
  final GetUserDetailUseCase _getUserDetailUseCase;
  JobSeekerHomePresenter(jobRepo, specializationRepo, userRepo)
      : _getJobsUseCase = GetJobsUseCase(jobRepo),
        _getSpecializationsUseCase = GetSpecializationsUseCase(specializationRepo),
        _getUserDetailUseCase = GetUserDetailUseCase(userRepo);
  
  void getJobs(int occupationId) => _getJobsUseCase.execute(_GetJobsObserver(this), occupationId);
  void getSpecializations() => _getSpecializationsUseCase.execute(_GetSpecializationsObserver(this));
  void getProfile(int userId) => _getUserDetailUseCase.execute(_GetUserDetailObserver(this), userId);

  @override
  void dispose() {
    _getJobsUseCase.dispose();
    _getSpecializationsUseCase.dispose();
    _getUserDetailUseCase.dispose();
  }
}

class _GetJobsObserver implements Observer<List<Job>> {
  final JobSeekerHomePresenter _presenter;

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

class _GetSpecializationsObserver implements Observer<List<Specialization>> {
  final JobSeekerHomePresenter _presenter;

  _GetSpecializationsObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getSpecializationsCallback(null);
  }

  @override
  void onNext(List<Specialization>? response) {
    _presenter.getSpecializationsCallback(response);
  }
}

class _GetUserDetailObserver implements Observer<JobSeeker> {
  final JobSeekerHomePresenter _presenter;

  _GetUserDetailObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getProfileCallback(null);
  }

  @override
  void onNext(JobSeeker? response) {
    _presenter.getProfileCallback(response);
  }
}