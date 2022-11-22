
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/data/models/applier.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/repositories/applier_repo.dart';

class CompanyApplierRepository implements ApplierRepo {
  @override
  Future<List<Applier>> getAppliers(int specializationId) async {
    //TODO: change static id to dynamic id
    final response = await Http.getList('/api/profile/specialization/1');
    return response.map((e) => ApplierModel.fromJson(e).toEntity()).toList();
  }

  @override
  Future<Applier> getApplier(int applierId) async {
    throw UnimplementedError();
  }
}