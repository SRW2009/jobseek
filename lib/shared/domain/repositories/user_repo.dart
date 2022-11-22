
import 'package:jobseek/shared/domain/entities/user.dart';

abstract class UserRepo {
  Future<User> getUserDetail(int userId);
}