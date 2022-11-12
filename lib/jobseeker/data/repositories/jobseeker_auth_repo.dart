
import 'package:jobseek/shared/domain/repositories/auth_repo.dart';

class JobSeekerAuthenticationRepository extends AuthenticationRepo {
  @override
  Future authenticate(String email, String password) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  Future<bool> isAuthenticated() {
    // TODO: implement isAuthenticated
    throw UnimplementedError();
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}