
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/repositories/applier_repo.dart';

import 'base/base_use_case.dart';

class GetApplierUseCase extends BaseUseCase<Applier, int> {

  GetApplierUseCase(ApplierRepo repo) : super((param) => repo.getApplier(param));
}