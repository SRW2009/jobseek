
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/entities/company.dart';
import 'package:jobseek/shared/domain/usecases/register.dart';

class CompanyRegisterPresenter extends Presenter {
  late Function(bool isSuccess) registerCallback;

  final RegisterUseCase _registerUseCase;
  CompanyRegisterPresenter(authRepo)
      : _registerUseCase = RegisterUseCase(authRepo);

  void register(Company user) => _registerUseCase
      .execute(_AuthenticateObserver(this), user);

  @override
  void dispose() {
    _registerUseCase.dispose();
  }
}

class _AuthenticateObserver implements Observer<void> {
  final CompanyRegisterPresenter _presenter;

  _AuthenticateObserver(this._presenter);

  @override
  void onComplete() {
    _presenter.registerCallback(true);
  }

  @override
  void onError(e) {
    print(e);
    _presenter.registerCallback(false);
  }

  @override
  void onNext(void response) {}
}