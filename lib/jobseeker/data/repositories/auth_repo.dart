
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/domain/entities/user.dart';
import 'package:jobseek/shared/domain/repositories/auth_repo.dart';

class JobSeekerAuthenticationRepository implements AuthenticationRepo {
  @override
  Future<bool> authenticate(String email, String password) async {
    //final response = await Http.post('/api/login');
    if (email == '10201023@student.itk.ac.id'
        && password == 'password') return true;
    throw Exception();
  }

  @override
  Future<bool> register(User user) async {
    //final response = await Http.post('/api/register');
    return true;
  }

  @override
  Future<bool> isAuthenticated() async {
    // TODO: implement isAuthenticated
    throw UnimplementedError();
  }

  @override
  Future<bool> logout() async {
    // TODO: implement logout
    throw UnimplementedError();
  }
}