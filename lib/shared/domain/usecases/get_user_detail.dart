
import 'package:jobseek/shared/domain/entities/user.dart';
import 'package:jobseek/shared/domain/repositories/user_repo.dart';

import 'base/base_use_case.dart';

class GetUserDetailUseCase extends BaseUseCase<User, int> {

  GetUserDetailUseCase(UserRepo repo) : super((param) => repo.getUserDetail(param));
}