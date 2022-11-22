
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/data/models/company.dart';
import 'package:jobseek/shared/domain/entities/company.dart';
import 'package:jobseek/shared/domain/repositories/user_repo.dart';

class CompanyRepository implements UserRepo {
  @override
  Future<Company> getUserDetail(int userId) async {
    //TODO: change static id to dynamic id
    final response = await Http.get('/api/companies/1');
    return CompanyModel.fromJson(response).toEntity();
  }
}