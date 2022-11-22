
import 'package:jobseek/shared/domain/entities/applier.dart';
import 'package:jobseek/shared/domain/repositories/applier_repo.dart';

import 'base/base_use_case.dart';

class GetAppliersUseCase extends BaseUseCase<List<Applier>, int> {

  GetAppliersUseCase(ApplierRepo repo) : super((param) => repo.getAppliers(param));
}