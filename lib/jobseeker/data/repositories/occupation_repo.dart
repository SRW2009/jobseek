
import 'package:jobseek/http.dart';
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/repositories/occupation_repo.dart';
import 'package:jobseek/shared/data/models/occupation.dart';

class JobSeekerOccupationRepository implements OccupationRepo {
  @override
  Future<List<Occupation>> getOccupations(int specializationId) async {
    //TODO: change static id to dynamic id
    final response = await Http.getList('/api/jobs/1');
    return response.map((e) => OccupationModel.fromJson(e).toEntity()).toList();
  }
}