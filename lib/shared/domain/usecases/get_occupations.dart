
import 'package:jobseek/shared/domain/entities/occupation.dart';
import 'package:jobseek/shared/domain/repositories/occupation_repo.dart';

import 'base/base_use_case.dart';

class GetOccupationsUseCase extends BaseUseCase<List<Occupation>, int> {

  GetOccupationsUseCase(OccupationRepo repo) : super((param) => repo.getOccupations(param));
}