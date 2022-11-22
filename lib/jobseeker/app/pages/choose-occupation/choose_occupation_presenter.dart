
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/usecases/get_occupations.dart';

class JobSeekerChooseOccupationPresenter extends Presenter {
  late Function(List<Occupation>?) getOccupationsCallback;

  final GetOccupationsUseCase _getOccupationsUseCase;
  JobSeekerChooseOccupationPresenter(occupationRepo)
      : _getOccupationsUseCase = GetOccupationsUseCase(occupationRepo);

  void getOccupations(int specializationId) => _getOccupationsUseCase
      .execute(_GetOccupationsObserver(this), specializationId);

  @override
  void dispose() {
    _getOccupationsUseCase.dispose();
  }
}

class _GetOccupationsObserver implements Observer<List<Occupation>> {
  final JobSeekerChooseOccupationPresenter _presenter;

  _GetOccupationsObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getOccupationsCallback(null);
  }

  @override
  void onNext(List<Occupation>? response) {
    _presenter.getOccupationsCallback(response);
  }
}