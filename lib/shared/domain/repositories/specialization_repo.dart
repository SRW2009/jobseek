
import 'package:jobseek/shared/domain/entities/specialization.dart';

abstract class SpecializationRepo {
  Future<List<Specialization>> getSpecializations();
}