
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/data/models/applier.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/repositories/applier_repo.dart';

class JobSeekerApplierRepository implements ApplierRepo {
  @override
  Future<List<Applier>> getAppliers(int specializationId) async {
    throw UnimplementedError();
  }

  @override
  Future<Applier> getApplier(int applierId) async {
    //TODO: change static id to dynamic id
    final response = await Http.get('/api/profile/1');
    return ApplierModel.fromJson(response).toEntity();
  }
}