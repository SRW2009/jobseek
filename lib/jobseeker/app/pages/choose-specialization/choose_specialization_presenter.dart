
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:jobseek/shared/domain/usecases/get_specializations.dart';

class JobSeekerChooseSpecializationPresenter extends Presenter {
  late Function(List<Specialization>?) getSpecializationsCallback;

  final GetSpecializationsUseCase _getSpecializationsUseCase;
  JobSeekerChooseSpecializationPresenter(specializationRepo)
      : _getSpecializationsUseCase = GetSpecializationsUseCase(specializationRepo);

  void getSpecializations() => _getSpecializationsUseCase.execute(_GetSpecializationsObserver(this));

  @override
  void dispose() {
    _getSpecializationsUseCase.dispose();
  }
}

class _GetSpecializationsObserver implements Observer<List<Specialization>> {
  final JobSeekerChooseSpecializationPresenter _presenter;

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