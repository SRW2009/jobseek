
abstract class AuthenticationRepo {
  Future authenticate(String email, String password);
  Future<bool> isAuthenticated();
  Future logout();
}