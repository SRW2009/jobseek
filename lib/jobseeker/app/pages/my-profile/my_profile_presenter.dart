
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/usecases/get_applier.dart';

class JobSeekerMyProfilePresenter extends Presenter {
  late Function(Applier?) getProfileCallback;

  final GetApplierUseCase _getApplierUseCase;
  JobSeekerMyProfilePresenter(applierRepo) 
      : _getApplierUseCase = GetApplierUseCase(applierRepo);

  void getApplier(int applierId) => _getApplierUseCase.execute(_GetApplierObserver(this), applierId);
  
  @override
  void dispose() {
    _getApplierUseCase.dispose();
  }
}

class _GetApplierObserver implements Observer<Applier> {
  final JobSeekerMyProfilePresenter _presenter;

  _GetApplierObserver(this._presenter);

  @override
  void onComplete() {}

  @override
  void onError(e) {
    print(e);
    _presenter.getProfileCallback(null);
  }

  @override
  void onNext(Applier? response) {
    _presenter.getProfileCallback(response);
  }
}