
import 'package:jobseek/shared/domain/entities/applier.dart';

abstract class ApplierRepo {
  Future<List<Applier>> getAppliers(int specializationId);
  Future<Applier> getApplier(int applierId);
}