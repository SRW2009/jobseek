
import 'package:jobseek/shared/domain/repositories/auth_repo.dart';

import 'base/base_use_case.dart';

class IsAuthenticatedUseCase extends BaseUseCase<bool, void> {

  IsAuthenticatedUseCase(AuthenticationRepo repo) : super((params) => repo.isAuthenticated());
}