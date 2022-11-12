
import 'package:jobseek/shared/domain/repositories/auth_repo.dart';

import 'base/base_completable_use_case.dart';

class AuthenticateUseCase extends BaseCompletableUseCase<AuthenticateUseCaseParams> {

  AuthenticateUseCase(AuthenticationRepo repo) : super((params) => repo.authenticate(params.email, params.password));
}

class AuthenticateUseCaseParams {
  final String email;
  final String password;

  AuthenticateUseCaseParams(this.email, this.password);
}