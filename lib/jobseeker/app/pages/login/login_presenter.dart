
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:jobseek/shared/domain/usecases/authenticate.dart';

class JobSeekerLoginPresenter extends Presenter {
  late Function(bool isSuccess) authenticationCallback;

  final AuthenticateUseCase _authenticateUseCase;
  JobSeekerLoginPresenter(authRepo)
      : _authenticateUseCase = AuthenticateUseCase(authRepo);

  void authenticate(String email, String password) => _authenticateUseCase
      .execute(_AuthenticateObserver(this), AuthenticateUseCaseParams(email, password));

  @override
  void dispose() {
    _authenticateUseCase.dispose();
  }
}

class _AuthenticateObserver implements Observer<void> {
  final JobSeekerLoginPresenter _presenter;

  _AuthenticateObserver(this._presenter);

  @override
  void onComplete() {
    _presenter.authenticationCallback(true);
  }

  @override
  void onError(e) {
    print(e);
    _presenter.authenticationCallback(false);
  }

  @override
  void onNext(void _) {}
}