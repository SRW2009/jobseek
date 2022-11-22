
import 'package:jobseek/shared/domain/entities/specialization.dart';
import 'package:jobseek/shared/domain/repositories/specialization_repo.dart';

import 'base/base_use_case.dart';

class GetSpecializationsUseCase extends BaseUseCase<List<Specialization>, void> {

  GetSpecializationsUseCase(SpecializationRepo repo) : super((param) => repo.getSpecializations());
}