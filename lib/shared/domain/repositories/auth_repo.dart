
import 'package:jobseek/shared/domain/entities/user.dart';

abstract class AuthenticationRepo {
  Future<bool> authenticate(String email, String password);
  Future<bool> register(User user);
  Future<bool> isAuthenticated();
  Future<bool> logout();
}