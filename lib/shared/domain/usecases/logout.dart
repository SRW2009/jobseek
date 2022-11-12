
import 'package:jobseek/shared/domain/repositories/auth_repo.dart';

import 'base/base_completable_use_case.dart';

class LogoutUseCase extends BaseCompletableUseCase<void> {

  LogoutUseCase(AuthenticationRepo repo) : super((params) => repo.logout());
}