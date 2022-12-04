
import 'package:jobseek/http.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/data/models/applier.dart';
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/repositories/applier_repo.dart';

class JobSeekerApplierRepository implements ApplierRepo {
  @override
  Future<List<Applier>> getAppliers(int specializationId) async {
    throw UnimplementedError();
  }

  @override
  Future<Applier> getApplier(int applierId) async {
    //TODO: change static id to dynamic id
    //final response = await Http.get('/api/profile/1');
    //return ApplierModel.fromJson(response).toEntity();
    return Applier(
      0, 'https://t3.ftcdn.net/jpg/03/39/45/96/360_F_339459697_XAFacNQmwnvJRqe1Fe9VOptPWMUxlZP8.jpg',
      'Chintia A.', 'chintiaa@student.itk.ac.id', '081234567890', LoremIpsum.generate(3), const Occupation.none(),
    );
  }
}