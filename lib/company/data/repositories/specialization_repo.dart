
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:jobseek/shared/domain/repositories/specialization_repo.dart';
import 'package:jobseek/shared/data/models/specialization.dart';

class CompanySpecializationRepository implements SpecializationRepo {
  @override
  Future<List<Specialization>> getSpecializations() async {
    final response = await Http.getList('/api/specializations');
    return response.map((e) => SpecializationModel.fromJson(e).toEntity()).toList();
  }
}