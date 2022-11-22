
import 'package:jobseek/shared/domain/entities/user.dart';
import 'package:jobseek/shared/domain/repositories/auth_repo.dart';

import 'base/base_completable_use_case.dart';

class RegisterUseCase extends BaseCompletableUseCase<User> {

  RegisterUseCase(AuthenticationRepo repo) : super((params) => repo.register(params));
}